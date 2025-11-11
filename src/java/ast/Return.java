package ast;

import java.util.ArrayList;
import java.util.List;

public final class Return extends Stmt {

    public Expr returnExpression;

    public Return(Expr returnExpression) {
        this.returnExpression = returnExpression;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<>();
        if (returnExpression != null) {
            children.add(returnExpression);
        }
        return children;
    }

}
