package regalloc;

import gen.asm.*;

import java.util.*;

import static gen.asm.Register.Arch.*;

public class GraphColouringRegAlloc implements AssemblyPass {
    private static final Register.Arch[] PHYSICAL_REGS = {
            t0, t1, t2, t3, t4, t5, t6, t7, t8, t9,
            s0, s1, s2, s3, s4, // s5, s6, s7,
    };

    private static final Register.Arch SPILL_REG0 = s5;
    private static final Register.Arch SPILL_REG1 = s6;
    private static final Register.Arch SPILL_REG2 = s7;

    private static final int NUM_PHYSICAL_REGS = PHYSICAL_REGS.length;

    private GraphColouringRegAlloc() { }

    private void emitPushRegisters(AssemblyProgram.TextSection section,
                                   List<Register.Virtual> allocatedOrder,
                                   Map<Register.Virtual, Register.Arch> vrToAr,
                                   List<Register.Virtual> spilledOrder,
                                   Map<Register.Virtual, Label> spillLabels) {
        section.emit("Original instruction: pushRegisters");

        Set<Register.Arch> alreadyPushed = new HashSet<>();

        for (Register.Virtual vr : allocatedOrder) {
            Register.Arch archReg = vrToAr.get(vr);
            if (alreadyPushed.add(archReg)) {
                section.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -4);
                section.emit(OpCode.SW, archReg, Register.Arch.sp, 0);
            }
        }

        for (Register.Virtual vr : spilledOrder) {
            Label label = spillLabels.get(vr);
            section.emit(OpCode.LA, SPILL_REG0, label);
            section.emit(OpCode.LW, SPILL_REG0, SPILL_REG0, 0);
            section.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -4);
            section.emit(OpCode.SW, SPILL_REG0, Register.Arch.sp, 0);
        }
    }


    private void emitPopRegisters(AssemblyProgram.TextSection section,
                                  List<Register.Virtual> allocatedOrder,
                                  Map<Register.Virtual, Register.Arch> vrToAr,
                                  List<Register.Virtual> spilledOrder,
                                  Map<Register.Virtual, Label> spillLabels) {
        section.emit("Original instruction: popRegisters");

        List<Register.Virtual> reversedSpilled = new ArrayList<>(spilledOrder);
        Collections.reverse(reversedSpilled);

        for (Register.Virtual vr : reversedSpilled) {
            Label label = spillLabels.get(vr);
            section.emit(OpCode.LW, SPILL_REG0, Register.Arch.sp, 0);
            section.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, 4);
            section.emit(OpCode.LA, SPILL_REG1, label);
            section.emit(OpCode.SW, SPILL_REG0, SPILL_REG1, 0);
        }

        // Pop physical registers in reverse push order
        Set<Register.Arch> seen = new HashSet<>();
        List<Register.Arch> physicalOrder = new ArrayList<>();
        for (Register.Virtual vr : allocatedOrder) {
            Register.Arch ar = vrToAr.get(vr);
            if (seen.add(ar)) {
                physicalOrder.add(ar);
            }
        }

        Collections.reverse(physicalOrder);

        for (Register.Arch ar : physicalOrder) {
            section.emit(OpCode.LW, ar, Register.Arch.sp, 0);
            section.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, 4);
        }
    }

    private void emitInstructionWithoutVirtualRegister(Instruction insn,
                                                       Map<Register.Virtual, Register.Arch> vrToAr,
                                                       Map<Register.Virtual, Label> spillLabels,
                                                       AssemblyProgram.TextSection section) {

        section.emit("Original instruction: "+insn);

        Map<Register, Register> mapping = new HashMap<>();
        Deque<Arch> spillRegs = new ArrayDeque<>();
        spillRegs.push(SPILL_REG2);
        spillRegs.push(SPILL_REG1);

        insn.uses().forEach(reg -> {
            if (reg instanceof Register.Virtual vr) {
                if (vrToAr.containsKey(vr)) {
                    mapping.put(vr, vrToAr.get(vr));
                } else if (spillLabels.containsKey(vr)) {
                    Register.Arch temp = spillRegs.pop();
                    mapping.put(vr, temp);
                    Label label = spillLabels.get(vr);
                    section.emit(OpCode.LA, temp, label);
                    section.emit(OpCode.LW, temp, temp, 0);
                }
            }
        });

        Register def = insn.def();
        Register defSpillTemp = SPILL_REG0;
        if (def instanceof Register.Virtual vr) {
            if (vrToAr.containsKey(vr)) {
                mapping.put(vr, vrToAr.get(vr));
            } else {
                mapping.put(def, defSpillTemp);
            }
        }

        section.emit(insn.rebuild(mapping));

        if (def instanceof Register.Virtual vr && spillLabels.containsKey(vr)) {
            Label label = spillLabels.get(def);
            section.emit(OpCode.LA, SPILL_REG1, label);
            section.emit(OpCode.SW, defSpillTemp, SPILL_REG1, 0);
        }
    }

    private AssemblyProgram run(AssemblyProgram prog) {
        AssemblyProgram newProg = new AssemblyProgram();

        prog.dataSection.items.forEach(newProg.dataSection::emit);

        CFGBuilder cfgBuilder = new CFGBuilder();

        IGBuilder igBuilder = new IGBuilder();

        prog.textSections.forEach(section -> {
            ControlFlowGraph cfg = cfgBuilder.visit(section);
            LivenessAnalyser livenessAnalyser = new LivenessAnalyser(cfg);
            livenessAnalyser.visit();
            InterferenceGraph ig = igBuilder.visit(cfg);
            ChaitinAllocator allocator = new ChaitinAllocator(ig, NUM_PHYSICAL_REGS, SpillingHeuristic.MOST_CONNECTED);
            allocator.allocate();

            Map<Virtual, Integer> colorMap = allocator.getColoring();
            Set<Virtual> spilledRegs = allocator.getSpilledRegisters();

            Map<Virtual, Arch> vrToAr = new HashMap<>();
            colorMap.forEach((vr, color) -> vrToAr.put(vr, PHYSICAL_REGS[color]));

            Map<Virtual, Label> spillLabels = new HashMap<>();
            if (!spilledRegs.isEmpty()) {
                newProg.dataSection.emit("Allocated labels for spilled registers");
                spilledRegs.forEach(sr -> {
                    Label l = Label.create(sr.toString());
                    spillLabels.put(sr, l);
                    newProg.dataSection.emit(l);
                    newProg.dataSection.emit(new Directive("space", 4));
                });
            }

            AssemblyProgram.TextSection newSection = newProg.emitNewTextSection();
            List<Register.Virtual> allocatedInOrder = new ArrayList<>(vrToAr.keySet());
            List<Register.Virtual> spilledInOrder = new ArrayList<>(spillLabels.keySet());

            section.items.forEach(item -> {
                switch (item) {
                    case AssemblyTextItem ati -> newSection.emit(ati);
                    case Instruction insn -> {
                        /*
                        if (livenessAnalyser.deadInstructions.contains(insn)) {
                            livenessAnalyser.deadInstructions.remove(insn);
                            break;
                        }

                         */
                        if (insn == Instruction.Nullary.pushRegisters) {
                            emitPushRegisters(newSection, allocatedInOrder, vrToAr, spilledInOrder, spillLabels);
                        } else if (insn == Instruction.Nullary.popRegisters) {
                            emitPopRegisters(newSection, allocatedInOrder, vrToAr, spilledInOrder, spillLabels);
                        } else
                            emitInstructionWithoutVirtualRegister(insn, vrToAr, spillLabels, newSection);
                    }
                }
            });

        });

        return newProg;
    }

    public static final GraphColouringRegAlloc INSTANCE = new GraphColouringRegAlloc();

    @Override
    public AssemblyProgram apply(AssemblyProgram prog) {
        return run(prog);
    }
}
