package regalloc;

import gen.asm.Register;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class IGNode {

    final Register.Virtual virtualReg;
    final Set<IGNode> neighborsSet;
    final List<IGNode> neighbors;

    public IGNode(Register.Virtual virtualReg) {
        this.virtualReg = virtualReg;
        this.neighborsSet = new HashSet<>();
        this.neighbors = new ArrayList<>();
    }

    public void addNeighbor(IGNode that) {
        if (this == that) return;

        if (this.neighborsSet.add(that)) {
            this.neighbors.add(that);
        }

        if (that.neighborsSet.add(this)) {
            that.neighbors.add(this);
        }
    }

    public int degree() {
        return neighbors.size();
    }

    @Override
    public String toString() {
        return virtualReg.toString();
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof IGNode that)
                && this.virtualReg.equals(that.virtualReg);
    }

    @Override
    public int hashCode() {
        return virtualReg.hashCode();
    }
}
