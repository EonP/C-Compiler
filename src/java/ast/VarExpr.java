package ast;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public final class VarExpr extends Expr {
    public final String name;
    public VarDecl vd; // to be filled in by the name analyser
    
    public VarExpr(String name){
	    this.name = name;
    }

    @Override
    public List<ASTNode> children() {
        return new ArrayList<>();
    }

}
