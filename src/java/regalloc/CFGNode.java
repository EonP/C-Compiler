package regalloc;

import gen.asm.Instruction;
import gen.asm.Register;

import javax.swing.tree.TreeCellRenderer;
import java.util.*;

public final class CFGNode {
    private static int nextId = 0;

    private final int id;
    public final Instruction instruction;
    final List<CFGNode> successors; // Filled in by CFGBuilder
    final List<CFGNode> predecessors; // Filled in by CFGBuilder
    final Set<Register> liveInSet; // Filled in by LivenessAnalyser
    final Set<Register> liveOutSet; // Filled in by LivenessAnalyser

    public static CFGNode create(Instruction instruction) {
        return new CFGNode(nextId++, instruction);
    }

    private CFGNode(int id, Instruction instruction) {
        this.id = id;
        this.instruction = instruction;
        this.successors = new ArrayList<>();
        this.predecessors = new ArrayList<>();
        this.liveInSet = new TreeSet<>(Comparator.comparing(Register::toString));
        this.liveOutSet = new TreeSet<>(Comparator.comparing(Register::toString));
    }

    public Register def() {
        return instruction.def();
    }

    public List<Register> uses() {
        return instruction.uses();
    }

    public int id() {
        return id;
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof CFGNode that) && this.id == that.id;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
