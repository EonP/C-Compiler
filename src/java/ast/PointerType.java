package ast;

import java.util.ArrayList;
import java.util.List;

public final class PointerType implements Type {

    public Type type;

    public PointerType(Type type) {
        this.type = type;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<>();
        children.add(type);
        return children;
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof PointerType that)
            && (type.equals(that.type));
    }

    @Override
    public String toString() {
        return "PointerType(" + type.toString() + ")";
    }

    @Override
    public int size() {
        return 4;
    }

    @Override
    public int alignment() {
        return size();
    }


}
