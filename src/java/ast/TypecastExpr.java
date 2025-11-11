package ast;

import java.util.ArrayList;
import java.util.List;

public final class TypecastExpr extends Expr {

    public Type typecastType;
    public Expr expr;

    public TypecastExpr(Type type, Expr expr) {
        this.typecastType = type;
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<>();
        children.add(typecastType);
        children.add(expr);
        return children;
    }
}
