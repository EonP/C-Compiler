import gen.asm.*;
import regalloc.CFGNode;
import regalloc.ControlFlowGraph;
import regalloc.DotPrinter;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class CfgTest {

    static AssemblyProgram.TextSection generateProgram() {
        AssemblyProgram.TextSection text = new AssemblyProgram.TextSection();
        Register a = Register.Arch.t0; // a -> $t0
        Register b = Register.Arch.t1; // b -> $t1
        Register c = Register.Arch.t2; // c -> $t2
        Register two = Register.Arch.t3;
        Register nine = Register.Arch.t4;

        Label L1 = Label.create("L1");

        // a = 0;
        text.emit(OpCode.LoadImmediate.LI, a, 0);

        // L1:
        text.emit(L1);

        // b = a + 1;
        text.emit(OpCode.ArithmeticWithImmediate.ADDI, b, a, 1);

        // c = c + b;
        text.emit(OpCode.TernaryArithmetic.ADD, c, c, b);

        // a = b * 2;
        text.emit(OpCode.TernaryArithmetic.MUL, a, b, two);

        // if (a < 9) goto L1;
        text.emit(OpCode.BLTZ, a, L1);

        // return c;
        text.emit(OpCode.ADD, Register.Arch.v0, Register.Arch.zero, c);
        text.emit(OpCode.JumpRegister.JR, Register.Arch.ra);

        return text;

    }

    public static void main(String[] args) throws IOException {
        File f = new File("/Users/leonpetrinos/Desktop/McGill/Winter/COMP-520/comp520-coursework-w2025/src/test/graph.dot");
        DotPrinter dotPrinter = new DotPrinter(f);
        ControlFlowGraph cfg = buildCFG(generateProgram());
        dotPrinter.print(cfg);
    }

    private static ControlFlowGraph buildCFG(AssemblyProgram.TextSection text) {
        ControlFlowGraph cfg = new ControlFlowGraph();
        Map<String, CFGNode> labelMap = new HashMap<>();

        CFGNode previousNode = null;
        for (int i = 0; i < text.items.size(); ++i) {
            AssemblyItem assemblyItem = text.items.get(i);

            switch (assemblyItem) {
                case Instruction instruction -> {

                    CFGNode currentNode = CFGNode.create(instruction);
                    cfg.addNode(currentNode);
                    if (previousNode != null && instruction.opcode.kind() != OpCode.Kind.JUMP) {
                        cfg.addEdge(previousNode, currentNode);
                    }

                    if (i != 0 && text.items.get(i - 1) instanceof Label label) {
                        labelMap.put(label.toString(), currentNode); // maps previous label to the next node
                    }

                    previousNode = currentNode;
                }
                default -> {}
            }
        }

        for (CFGNode currentNode : cfg.nodes) {
            Instruction instruction = currentNode.instruction;
            switch (instruction) {
                case Instruction.BinaryBranch binaryBranch -> {
                    String label = binaryBranch.label.toString();
                    CFGNode nextNode = labelMap.get(label);
                    cfg.addEdge(currentNode, nextNode);
                }
                case Instruction.UnaryBranch unaryBranch -> {
                    String label = unaryBranch.label.toString();
                    CFGNode nextNode = labelMap.get(label);
                    cfg.addEdge(currentNode, nextNode);
                }

                case Instruction.Jump jump -> {
                    String label = jump.label.toString();
                    CFGNode nextNode = labelMap.get(label);
                    cfg.addEdge(currentNode, nextNode);
                }

                default -> {}
            }
        }
        return cfg;
    }

}
