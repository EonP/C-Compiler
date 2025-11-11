package regalloc;

import gen.asm.Instruction;
import gen.asm.Register;

import java.util.*;

public final class LivenessAnalyser {

    private final ControlFlowGraph cfg;
    // public final Set<Instruction> deadInstructions = new HashSet<>();

    public LivenessAnalyser(ControlFlowGraph cfg) {
        this.cfg = cfg;
    }

    public void visit() {
        boolean hasChanged;
        List<CFGNode> reversePreorder = getReversePreorder(cfg.nodes);
        do {
            hasChanged = false;
            for (CFGNode node : reversePreorder) {
                // LIVEout(n) = U (LIVEin(successors)) for all successors of n
                for (CFGNode successor : node.successors) {
                    if (node.liveOutSet.addAll(successor.liveInSet)) {
                        hasChanged = true;
                    }
                }

                // LIVEin(n) = use(n) U (LIVEout(n) - def(n))
                Set<Register> temp = new TreeSet<>(Comparator.comparing(Register::toString));
                temp.addAll(node.liveOutSet);
                if (node.def() != null) {
                    temp.remove(node.def());
                }
                if (node.liveInSet.addAll(node.uses())) {
                    hasChanged = true;
                }
                if (node.liveInSet.addAll(temp)) {
                    hasChanged = true;
                }
            }
        } while (hasChanged);

        // Remove dead instructions
        reversePreorder.forEach(node -> {
            Register def = node.def();
            if (def != null && !node.liveOutSet.contains(def)) {
                //deadInstructions.add(node.instruction);
                node.liveOutSet.add(def);
            }
        });

    }

    private List<CFGNode> getReversePreorder(List<CFGNode> nodes) {
        Set<CFGNode> visited = new HashSet<>();
        List<CFGNode> output = new ArrayList<>();

        for (CFGNode node : nodes.reversed()) {
            if (visited.contains(node))
                continue;
            dfsVisit(node, visited, output);
        }

        return output;
    }

    private void dfsVisit(CFGNode node, Set<CFGNode> visited, List<CFGNode> output) {
        visited.add(node);
        output.add(node);
        for (CFGNode predecessor : node.predecessors) {
            if (visited.contains(predecessor))
                continue;
            dfsVisit(predecessor, visited, output);
        }
    }
}
