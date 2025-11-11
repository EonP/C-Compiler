package ast;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class ClassDecl extends Decl {
    public List<VarDecl> fields;
    public List<FunDef> functions;
    public ClassType extendsType;
    public Map<String, FunDef> methodMap = new HashMap<>(); // Filled by name analyser

    public ClassDecl(ClassType classType, ClassType extendsType, List<VarDecl> fields, List<FunDef> functions) {
        this.type = classType;
        this.name = classType.name;
        this.extendsType = extendsType;
        this.fields = fields;
        this.functions = functions;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<>();
        children.add(type);
        if (extendsType != null) {
            children.add(extendsType);
        }
        children.addAll(fields);
        children.addAll(functions);
        return children;
    }
}

