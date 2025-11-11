package ast;

import java.util.ArrayList;
import java.util.List;

public final class StructTypeDecl extends Decl {
    public final List<VarDecl> fields;

    public StructTypeDecl(StructType type, List<VarDecl> fields) {
        this.type = type;
        type.std = this;
        this.fields = fields;
        this.name = type.name;
    }

    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<>();
        children.add(type);
        children.addAll(fields);
        return children;
    }

}
