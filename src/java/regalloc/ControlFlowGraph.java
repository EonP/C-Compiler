package regalloc;

import java.util.*;

public final class ControlFlowGraph {
    public final List<CFGNode> nodes;

    public ControlFlowGraph() {
        this.nodes = new ArrayList<>();
    }

    public void addNode(CFGNode node) {
        nodes.add(node);
    }

    public void addEdge(CFGNode sourceNode, CFGNode destinationNode) {
        sourceNode.successors.add(destinationNode);
        destinationNode.predecessors.add(sourceNode);
    }

}
