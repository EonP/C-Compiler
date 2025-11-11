package ast;

import java.io.PrintWriter;

public class ASTPrinter {

    private final PrintWriter writer;

    public ASTPrinter(PrintWriter writer) {
            this.writer = writer;
    }

    public void visit(ASTNode node) {
        if (node == null) {
            throw new IllegalStateException("Unexpected null value");
        }

        if (!(node instanceof Op || node instanceof BaseType)) {
            writer.print(node.getClass().getSimpleName() + "(");
        }

        switch(node) {

            case ArrayType at -> {
                visit(at.type);
                writer.print(","+at.size);
            }

            case BaseType bt -> writer.print(bt);

            case ChrLiteral cl -> writer.print(cl.c);

            case FieldAccessExpr fe -> {
                visit(fe.structOrClass);
                writer.print(","+fe.fieldName);
            }

            case FunCallExpr fe -> {
                writer.print(fe.name);
                for (Expr arg : fe.args) {
                    writer.print(",");
                    visit(arg);
                }
            }

            case FunDecl fd -> {
                visit(fd.type);
                writer.print(","+fd.name);
                for (VarDecl vd : fd.params) {
                    writer.print(",");
                    visit(vd);
                }
            }

            case FunDef fd -> {
                visit(fd.type);
                writer.print(","+fd.name);
                for (VarDecl vd : fd.params) {
                    writer.print(",");
                    visit(vd);

                }
                writer.print(",");
                visit(fd.block);
            }

            case Op op -> writer.print(op);

            case IntLiteral il -> writer.print(il.value);

            case StrLiteral sl -> writer.print(sl.str);

            case StructType st -> writer.print(st.name);

            case VarDecl vd -> {
                visit(vd.type);
                writer.print(","+vd.name);
            }

            case VarExpr v -> writer.print(v.name);

            default -> {
                String delimiter = "";
                for (ASTNode child : node.children()) {
                    writer.print(delimiter);
                    delimiter = ",";
                    visit(child);
                }
            }
        }

        if (!(node instanceof Op || node instanceof BaseType)) {
            writer.print(")");
        }

        switch(node) {
            case Program ignored -> {
                writer.flush(); // ensures the writer flushes all the writes at the end of our program
            }
            default -> {}
        }

    }


    
}
