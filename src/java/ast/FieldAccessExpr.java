package ast;

import java.util.ArrayList;
import java.util.List;

public final class FieldAccessExpr extends Expr {

    public Expr structOrClass;
    public String fieldName;

    public FieldAccessExpr(Expr structOrClass, String name) {
        this.structOrClass = structOrClass;
        this.fieldName = name;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<>();
        children.add(structOrClass);
        return children;
    }
}
