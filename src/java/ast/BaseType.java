package ast;

import java.util.ArrayList;
import java.util.List;

public enum BaseType implements Type {
    INT, CHAR, VOID, UNKNOWN, NONE;

    public List<ASTNode> children() {
        return new ArrayList<ASTNode>();
    }

    @Override
    public String toString() {
        return this.name();
    }

    @Override
    public int size() {
        return switch (this) {
            case INT -> 4;
            case CHAR -> 1;
            default -> 0;
        };
    }

    @Override
    public int alignment() {
        return size();
    }
}
