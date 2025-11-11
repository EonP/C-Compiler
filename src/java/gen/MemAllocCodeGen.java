package gen;

import ast.*;
import gen.asm.AssemblyProgram;
import gen.asm.Directive;
import gen.asm.Label;

/* This allocator should deal with all global and local variable declarations. */

public class MemAllocCodeGen extends CodeGen {

    public MemAllocCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    private FunDef currentFunction = null;
    private boolean global = true;
    private int fpOffset = 0;

    void visit(ASTNode n) {
        switch (n) {

            case StructTypeDecl ignored -> {}
            case FunDecl ignored -> {}

            case VarDecl vd -> {
                vd.global = this.global;
                int vdSize = vd.type.size();
                if (global) {
                    Label label = Label.create(vd.name);
                    vd.label = label;
                    asmProg.dataSection.emit(label);
                    asmProg.dataSection.emit(new Directive("space", vdSize));
                    asmProg.dataSection.emit(new Directive("align", 2));
                } else {
                    if (!vd.hasVirtualReg()) {
                        if (vdSize % 4 != 0) {
                            vdSize += 4 - (vdSize % 4); // Align to 4 for the stack
                        }
                        this.fpOffset -= vdSize;
                        vd.fpOffset = this.fpOffset;
                        this.currentFunction.localVarSpace += vdSize;
                    }
                }
            }

            case FunDef fd -> {
                int offset = 4; // FP + 4
                if (!(fd.type instanceof BaseType bt && bt == BaseType.VOID)) {
                    fd.retValFpOffset = +4;
                    int retSize = (fd.type instanceof ArrayType) ? Type.referenceSize() : fd.type.size(); // arrays are passed by reference
                    if (retSize % 4 != 0) {
                        retSize += 4 - (retSize % 4);
                    }
                    offset += retSize;
                }

                for (VarDecl param : fd.params.reversed()) {
                    param.fpOffset = offset;
                    param.isFunctionParam = true;
                    int paramSize = (param.type instanceof ArrayType) ? Type.referenceSize() : param.type.size();
                    if (paramSize % 4 != 0) {
                        paramSize += 4 - (paramSize % 4);
                    }
                    offset += paramSize;
                }

                this.fpOffset = -4;
                this.currentFunction = fd;
                this.global = false;

                visit(fd.block);

                this.global = true;
                this.currentFunction = null;
            }

            case StrLiteral s -> {
                Label strLabel = Label.create("STRING");
                s.label = strLabel;
                asmProg.dataSection.emit(strLabel);
                asmProg.dataSection.emit(new Directive("asciiz", asciizString(s.str)));
                asmProg.dataSection.emit(new Directive("align", 2));
            }

            default -> {
                for (ASTNode c : n.children()) {
                    visit(c);
                }
            }

        }

    }

    private String asciizString(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("\"");
        for (int i = 0; i < str.length(); i++) {
            char c = str.charAt(i);
            switch (c) {
                case '\u0007': sb.append("\\a"); break;
                case '\b': sb.append("\\b"); break;
                case '\n': sb.append("\\n"); break;
                case '\r': sb.append("\\r"); break;
                case '\t': sb.append("\\t"); break;
                case '\\': sb.append("\\\\"); break;
                case '\'': sb.append("\\'"); break;
                case '\"': sb.append("\\\""); break;
                case '\0': sb.append("\\0"); break;
                default: sb.append(c); break;
            }
        }
        sb.append("\"");
        return sb.toString();
    }
}
