package ast;

import java.util.ArrayList;
import java.util.List;

public final class ArrayType implements Type {

    public Type type;
    public int size;

    public ArrayType(Type type, int size) {
        this.type = type;
        this.size = size;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<>();
        children.add(type);
        return children;
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof ArrayType that)
                && (this.size == that.size)
                && (this.type.equals(that.type));
    }

    @Override
    public String toString() {
        return "ArrayType(" + type.toString() + ", " + size + ")";
    }

    @Override
    public int size() {
        return size * type.size();
    }

    @Override
    public int alignment() {
        return type.alignment();
    }
}
