package ast;

import java.util.ArrayList;
import java.util.List;

public final class FunCallExpr extends Expr {
    public String name;
    public List<Expr> args;
    public FunDef fd = null; // To be filled in by the name analyser

    public FunCallExpr(String name, List<Expr> args) {
        this.name = name;
        this.args = args;
    }

    @Override
    public List<ASTNode> children() {
        return new ArrayList<>(args);
    }
}
