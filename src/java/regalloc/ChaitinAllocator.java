package regalloc;

import gen.asm.Register;

import java.util.*;

public class ChaitinAllocator {

    private final InterferenceGraph graph;
    private final int availableRegisters;
    private final Deque<IGNode> stack;
    private final Map<IGNode, Integer> degreeMap;
    private final List<IGNode> worklist;
    private final SpillingHeuristic heuristic;

    private final Set<Register.Virtual> spilledRegisters;
    private final Map<Register.Virtual, Integer> coloring;

    public ChaitinAllocator(InterferenceGraph graph, int availableRegisters, SpillingHeuristic heuristic) {
        this.graph = graph;
        this.availableRegisters = availableRegisters;
        this.heuristic = heuristic;
        stack = new ArrayDeque<>();
        degreeMap = new HashMap<>();
        coloring = new HashMap<>();
        spilledRegisters = new HashSet<>();
        graph.nodes().forEach(node -> {
            int initialNeighborCount = node.neighbors.size();
            degreeMap.put(node, initialNeighborCount);
        });
        worklist = new ArrayList<>(graph.nodes());
    }

    public Map<Register.Virtual, Integer> getColoring() {
        return coloring;
    }

    public Set<Register.Virtual> getSpilledRegisters() {
        return spilledRegisters;
    }

    public void allocate() {
        populateStack();
        assignColors();
    }

    private void populateStack() {
        if (worklist.isEmpty()) {
            return;
        }

        IGNode removedNode = null;

        for (IGNode node : worklist) {
            int degree = degreeMap.get(node);
            if (degree < availableRegisters) {
                updateNeighborDegrees(node);
                stack.push(node);
                degreeMap.remove(node);
                removedNode = node;
                break;
            }
        }

        if (removedNode != null) {
            worklist.remove(removedNode);
            populateStack();
        } else {
            spillRegister();
        }

    }

    private void spillRegister() {
        IGNode nodeToSpill = heuristic.pickNodeToSpill(worklist, degreeMap);
        spilledRegisters.add(nodeToSpill.virtualReg);
        updateNeighborDegrees(nodeToSpill);
        stack.push(nodeToSpill);
        degreeMap.remove(nodeToSpill);
        worklist.remove(nodeToSpill);
        populateStack();
    }

    private void assignColors() {
        while (!stack.isEmpty()) {
            IGNode node = stack.pop();

            if (spilledRegisters.contains(node.virtualReg)) {
                continue;
            }

            Set<Integer> usedColors = new HashSet<>();
            for (IGNode neighbor : node.neighbors) {
                Integer color = coloring.get(neighbor.virtualReg);
                if (color != null) {
                    usedColors.add(color);
                }
            }

            for (int color = 0; color < availableRegisters; ++color) {
                if (!usedColors.contains(color)) {
                    coloring.put(node.virtualReg, color);
                    break;
                }
            }
        }
    }

    private void updateNeighborDegrees(IGNode node) {
        node.neighbors.forEach(neighbor -> {
            degreeMap.computeIfPresent(neighbor, (n, d) -> d - 1);
        });
    }



}
