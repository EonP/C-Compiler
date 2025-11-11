package sem;

import ast.VarDecl;

import java.util.Optional;

public class VarSymbol extends Symbol {
    public VarDecl varDecl;

    public VarSymbol(VarDecl varDecl) {
        super(varDecl.name);
        this.varDecl = varDecl;
    }
}
