package ast;

import java.util.ArrayList;
import java.util.List;

public final class If extends Stmt {

    public Expr condition;
    public Stmt ifStatement, elseStatement;

    public If(Expr condition, Stmt ifStatement, Stmt elseStatement) {
        this.condition = condition;
        this.ifStatement = ifStatement;
        this.elseStatement = elseStatement;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<>();
        children.add(condition);
        children.add(ifStatement);
        if (elseStatement != null) {
            children.add(elseStatement);
        }
        return children;
    }

}
