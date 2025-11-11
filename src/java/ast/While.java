package ast;

import java.util.ArrayList;
import java.util.List;

public final class While extends Stmt {

    public Expr condition;
    public Stmt statement;

    public While(Expr condition, Stmt statement) {
        this.condition = condition;
        this.statement = statement;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<>();
        children.add(condition);
        children.add(statement);
        return children;
    }
}
