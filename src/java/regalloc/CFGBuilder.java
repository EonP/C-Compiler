package regalloc;

import gen.asm.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class CFGBuilder {

    public ControlFlowGraph visit(AssemblyProgram.TextSection text) {
        ControlFlowGraph cfg = new ControlFlowGraph();
        HashMap<String, CFGNode> labelMap = new HashMap<>();
        List<Label> seenLabels = new ArrayList<>();
        CFGNode previousNode = null;

        for (int i = 0; i < text.items.size(); ++i) {
            AssemblyItem assemblyItem = text.items.get(i);
            switch (assemblyItem) {
                case Instruction instruction -> {
                    CFGNode currentNode = CFGNode.create(instruction);
                    cfg.addNode(currentNode);
                    if (previousNode != null) {
                        cfg.addEdge(previousNode, currentNode);
                    }

                    if (!seenLabels.isEmpty()) {
                        seenLabels.forEach(label -> labelMap.put(label.toString(), currentNode));
                        seenLabels = new ArrayList<>();
                    }

                    previousNode = currentNode;
                }
                case AssemblyTextItem ati -> {
                    if (ati instanceof Label label) {
                        seenLabels.add(label);
                    }
                }
            }
        }

        for (CFGNode currentNode : cfg.nodes) {
            switch (currentNode.instruction) {
                case Instruction.BinaryBranch binaryBranch -> {
                    CFGNode nextNode = labelMap.get(binaryBranch.label.toString());
                    if (nextNode != null) {
                        cfg.addEdge(currentNode, nextNode);
                    }
                }

                case Instruction.UnaryBranch unaryBranch -> {
                    CFGNode nextNode = labelMap.get(unaryBranch.label.toString());
                    if (nextNode != null) {
                        cfg.addEdge(currentNode, nextNode);
                    }
                }

                default -> {}
            }
        }
        return cfg;

    }

}
