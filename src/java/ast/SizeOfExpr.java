package ast;

import java.util.ArrayList;
import java.util.List;

public final class SizeOfExpr extends Expr {

    public Type innerType;

    public SizeOfExpr(Type type) {
        this.innerType = type;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<>();
        children.add(innerType);
        return children;
    }
}
