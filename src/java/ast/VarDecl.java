package ast;

import gen.asm.Label;
import gen.asm.Register;

import java.util.ArrayList;
import java.util.List;

public final class VarDecl extends Decl {

    public int fpOffset;
    public boolean global = false;
    public boolean isFunctionParam = false;
    public Label label;
    public Register.Virtual virtualReg = null; // to be filled in by Register Promotion pass

    public VarDecl(Type type, String name) {
	    this.type = type;
	    this.name = name;
    }

    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<>();
        children.add(type);
        return children;
    }

    public boolean hasVirtualReg() {
        return virtualReg != null;
    }

}
