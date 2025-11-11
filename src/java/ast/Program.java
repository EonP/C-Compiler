package ast;

import java.util.ArrayList;
import java.util.List;

public final class Program implements ASTNode {

    public final List<Decl> decls;


    public Program(List<Decl> decls) {
        this.decls = decls;
    }

    public List<ASTNode> children() {
        return new ArrayList<>(decls);
    }

    public static List<FunDef> builtInFuncDecls() {
        List<FunDef> funDefs = new ArrayList<>();
        {
            Type paramType = new PointerType(BaseType.CHAR);
            VarDecl param = new VarDecl(paramType, "s");
            Block b = new Block(new ArrayList<>(), new ArrayList<>());
            FunDef fd = new FunDef(BaseType.VOID, "print_s", List.of(param), b);
            funDefs.add(fd);
        }
        {
            Type paramType = BaseType.INT;
            VarDecl param = new VarDecl(paramType, "i");
            Block b = new Block(new ArrayList<>(), new ArrayList<>());
            FunDef fd = new FunDef(BaseType.VOID, "print_i", List.of(param), b);
            funDefs.add(fd);
        }
        {
            Type paramType = BaseType.CHAR;
            VarDecl param = new VarDecl(paramType, "c");
            Block b = new Block(new ArrayList<>(), new ArrayList<>());
            FunDef fd = new FunDef(BaseType.VOID, "print_c", List.of(param), b);
            funDefs.add(fd);
        }
        {
            Block b = new Block(new ArrayList<>(), new ArrayList<>());
            FunDef fd = new FunDef(BaseType.CHAR, "read_c", new ArrayList<>(), b);
            funDefs.add(fd);
        }
        {
            Block b = new Block(new ArrayList<>(), new ArrayList<>());
            FunDef fd = new FunDef(BaseType.INT, "read_i", new ArrayList<>(), b);
            funDefs.add(fd);
        }
        {
            Type paramType = BaseType.INT;
            VarDecl param = new VarDecl(paramType, "size");
            Block b = new Block(new ArrayList<>(), new ArrayList<>());
            FunDef fd = new FunDef(new PointerType(BaseType.VOID), "mcmalloc", List.of(param), b);
            funDefs.add(fd);
        }
        return funDefs;
    }



}
