package sem;

import ast.FunDecl;
import ast.FunDef;

public class FunSymbol extends Symbol {
    public FunDecl funDecl;
    public FunDef funDef;

    public FunSymbol(FunDecl funDecl) {
        super(funDecl.name);
        this.funDecl = funDecl;
        this.funDef = null;
    }

    public FunSymbol(FunDef funDef) {
        super(funDef.name);
        this.funDef = funDef;
        this.funDecl = null;
    }
}
