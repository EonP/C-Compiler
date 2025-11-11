package regalloc;

import com.sun.source.tree.Tree;
import gen.asm.Register;

import java.util.*;

public final class InterferenceGraph {

    private final Map<Register.Virtual, IGNode> nodes;

    public InterferenceGraph() {
        this.nodes = new TreeMap<>(Comparator.comparing(Register.Virtual::toString));
    }

    public IGNode getOrCreateNode(Register.Virtual virtualReg) {
        return nodes.computeIfAbsent(virtualReg, IGNode::new);
    }

    public void addEdge(IGNode n1, IGNode n2) {
        if (!n1.equals(n2)) {
            n1.addNeighbor(n2);
        }
    }

    public List<IGNode> nodes() {
        return nodes.values().stream().toList();
    }

}
