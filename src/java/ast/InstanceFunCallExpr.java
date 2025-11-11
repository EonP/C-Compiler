package ast;

import java.util.ArrayList;
import java.util.List;

public final class InstanceFunCallExpr extends Expr {
    public Expr classInstance;
    public FunCallExpr classFunction;

    public InstanceFunCallExpr(Expr classInstance, FunCallExpr classFunction) {
        this.classInstance = classInstance;
        this.classFunction = classFunction;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<>();
        children.add(classInstance);
        children.add(classFunction);
        return children;
    }

}

