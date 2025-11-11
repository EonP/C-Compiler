package regalloc;

import gen.asm.Register;

import java.util.List;
import java.util.Set;

public final class IGBuilder {

    public InterferenceGraph visit(ControlFlowGraph cfg) {
        InterferenceGraph ig = new InterferenceGraph();

        for (CFGNode cfgNode : cfg.nodes) {
            addEdgesFromLiveSet(ig, cfgNode.liveInSet);
            addEdgesFromLiveSet(ig, cfgNode.liveOutSet);
        }

        return ig;
    }

    private void addEdgesFromLiveSet(InterferenceGraph ig, Set<Register> liveSet) {
        List<Register.Virtual> virtualRegs = liveSet.stream()
                .filter(r -> r instanceof Register.Virtual)
                .map(r -> (Register.Virtual) r)
                .toList();

        // Cross product
        for (int i = 0; i < virtualRegs.size(); ++i) {
            Register.Virtual v1 = virtualRegs.get(i);
            IGNode node1 = ig.getOrCreateNode(v1);
            for (int j = i + 1; j < virtualRegs.size(); ++j) {
                Register.Virtual v2 = virtualRegs.get(j);
                IGNode node2 = ig.getOrCreateNode(v2);
                ig.addEdge(node1, node2);
            }
        }
    }

}
