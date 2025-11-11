package gen;

import ast.*;
import gen.asm.*;

import javax.naming.ldap.ExtendedRequest;
import java.security.DigestInputStream;
import java.util.ArrayList;
import java.util.List;


/**
 * Generates code to evaluate an expression and return the result in a register.
 */
public class ExprValCodeGen extends CodeGen {

    private final AssemblyProgram.DataSection data;

    public ExprValCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
        this.data = asmProg.dataSection;
    }

    public Register visit(Expr e) {
        AssemblyProgram.TextSection text = asmProg.getCurrentTextSection();

        if ((e.type instanceof StructType || e.type instanceof ArrayType) && !(e instanceof FunCallExpr)) {
            return (new ExprAddrCodeGen(asmProg)).visit(e);
        }

        return switch(e) {

            case IntLiteral i -> {
                Register resReg = Register.Virtual.create();
                text.emit(OpCode.LI, resReg, i.value);
                yield resReg;
            }

            case ChrLiteral c -> {
                Register resReg = Register.Virtual.create();
                text.emit(OpCode.ADDI, resReg, Register.Arch.zero, (int) c.c);
                yield resReg;
            }

            case StrLiteral s -> (new ExprAddrCodeGen(asmProg)).visit(s);

            case VarExpr v -> {
                if (v.vd.hasVirtualReg()) {
                    yield v.vd.virtualReg;
                }
                Register addrReg = (new ExprAddrCodeGen(asmProg)).visit(v);
                Register resReg = Register.Virtual.create();
                if (v.type instanceof BaseType bt && bt == BaseType.CHAR) {
                    text.emit(OpCode.LB, resReg, addrReg, 0);
                } else if (v.type instanceof ArrayType) {
                    text.emit(OpCode.LW, resReg, addrReg, 0);
                } else {
                    text.emit(OpCode.LW, resReg, addrReg, 0);
                }
                yield resReg;
            }

            case FunCallExpr fce -> {

                if (isLibraryFunction(fce.name)) {
                    if (!fce.args.isEmpty()) {
                        Register argReg = visit(fce.args.getFirst());
                        text.emit(OpCode.ADD, Register.Arch.a0, argReg, Register.Arch.zero);
                    }

                    text.emit(OpCode.JAL, Label.getFunctionLabel(fce.fd.name));

                    if (fce.type instanceof BaseType bt && bt == BaseType.VOID) {
                        yield Register.Arch.zero;
                    }

                    Register resReg = Register.Virtual.create();
                    text.emit(OpCode.ADD, resReg, Register.Arch.v0, Register.Arch.zero);
                    yield resReg;
                }

                // PRECALL
                int totalStackSpace = 0;
                // space for arguments
                for (VarDecl param : fce.fd.params) {
                    totalStackSpace += param.type instanceof ArrayType ? Type.referenceSize() : param.type.size();
                    if (totalStackSpace % 4 != 0) {
                        totalStackSpace += 4 - (totalStackSpace % 4);
                    }
                }
                text.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -totalStackSpace);
                int offset = 0;
                for (Expr arg : fce.args.reversed()) {
                    Type argType = arg.type;
                    Register argReg = visit(arg);
                    if (argType instanceof StructType st) {
                        int structSize = st.size();

                        int tempOff = offset;
                        Register tempReg = Register.Virtual.create();
                        for (int i = structSize - 1; i >= 0; --i) {
                            text.emit(OpCode.LB, tempReg, argReg, i);
                            text.emit(OpCode.SB, tempReg, Register.Arch.sp, tempOff + i);
                        }
                        offset += structSize;
                        if (offset % 4 != 0) {
                            offset += 4 - (offset % 4);
                        }
                    } else if (argType instanceof BaseType bt && bt == BaseType.CHAR) {
                        text.emit(OpCode.SB, argReg, Register.Arch.sp, offset);
                        offset += 4;
                    } else {
                        text.emit(OpCode.SW, argReg, Register.Arch.sp, offset);
                        offset += 4;
                    }
                }

                // save space for return value
                int retSize = fce.type instanceof ArrayType ? 4 : fce.type.size();
                if (retSize % 4 != 0) {
                    retSize += 4 - (retSize % 4);
                }

                totalStackSpace += retSize;
                text.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -retSize);

                text.emit(OpCode.JAL, Label.getFunctionLabel(fce.fd.name));



                //POST-CALL
                Register resReg = Register.Virtual.create();
                if (fce.type instanceof StructType) {
                    text.emit(OpCode.ADD, resReg, Register.Arch.zero, Register.Arch.sp);
                } else if (fce.type instanceof BaseType bt && bt == BaseType.CHAR) {
                    text.emit(OpCode.LB, resReg, Register.Arch.sp, 0);
                } else {
                    text.emit(OpCode.LW, resReg, Register.Arch.sp, 0);
                }

                text.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, totalStackSpace);

                yield resReg;
            }

            case BinOp bo -> {
                Register lhs = visit(bo.lhs);
                Register resReg = Register.Virtual.create();
                if (bo.op == Op.OR) {
                    Label trueLabel = Label.create("TRUE");
                    Label endLabel = Label.create("END");

                    text.emit(OpCode.BNEZ, lhs, trueLabel); // bnez lhs, TRUE

                    Register rhs = visit(bo.rhs);
                    text.emit(OpCode.BNEZ, rhs, trueLabel); // bnez rhs, TRUE

                    text.emit(OpCode.LI, resReg, 0); // li res, 0
                    text.emit(OpCode.J, endLabel); // j END

                    text.emit(trueLabel); // TRUE:
                    text.emit(OpCode.LI, resReg, 1); // li res, 1

                    text.emit(endLabel); // END:
                } else if (bo.op == Op.AND) {
                    Label falseLabel = Label.create("FALSE");
                    Label endLabel = Label.create("END");

                    text.emit(OpCode.BEQZ, lhs, falseLabel); // beqz lhs, FALSE

                    Register rhs = visit(bo.rhs);
                    text.emit(OpCode.BEQZ, rhs, falseLabel); // beqz rhs, FALSE

                    text.emit(OpCode.LI, resReg, 1); // li res, 1
                    text.emit(OpCode.J, endLabel); // j END

                    text.emit(falseLabel); // FALSE:
                    text.emit(OpCode.LI, resReg, 0); // li res, 0

                    text.emit(endLabel); // END:
                } else {
                    Register rhs = visit(bo.rhs);
                    switch (bo.op) {
                        case ADD -> text.emit(OpCode.ADD, resReg, lhs, rhs); // add res, lhs, rhs
                        case SUB -> text.emit(OpCode.SUB, resReg, lhs, rhs); // sub res, lhs, rhs
                        case MUL -> {
                            text.emit(OpCode.MULT, lhs, rhs); // mult lhs, rhs
                            text.emit(OpCode.MFLO, resReg);   // mflo, res
                        }
                        case DIV, MOD -> {
                            text.emit(OpCode.DIV, lhs, rhs);
                            text.emit(bo.op == Op.DIV ? OpCode.MFLO : OpCode.MFHI, resReg);
                        }
                        case GT -> text.emit(OpCode.SLT, resReg, rhs, lhs);
                        case LT -> text.emit(OpCode.SLT, resReg, lhs, rhs);
                        case GE -> {
                            text.emit(OpCode.SLT, resReg, lhs, rhs);
                            text.emit(OpCode.XORI, resReg, resReg, 1);
                        }
                        case LE -> {
                            text.emit(OpCode.SLT, resReg, rhs, lhs);
                            text.emit(OpCode.XORI, resReg, resReg, 1);
                        }
                        case NE -> {
                            text.emit(OpCode.XOR, resReg, lhs, rhs);
                            text.emit(OpCode.SLTU, resReg, Register.Arch.zero, resReg);
                        }
                        case EQ -> {
                            text.emit(OpCode.XOR, resReg, lhs, rhs);
                            text.emit(OpCode.SLTIU, resReg, resReg, 1);
                        }
                        default -> throw new IllegalStateException("Case should never be reached");
                    }
                }
                yield resReg;
            }

            case ArrayAccessExpr aae -> {
                Register addrReg = (new ExprAddrCodeGen(asmProg)).visit(aae);
                Register resReg = Register.Virtual.create();
                if (aae.type instanceof BaseType bt && bt == BaseType.CHAR) {
                    text.emit(OpCode.LB, resReg, addrReg, 0);
                } else {
                    text.emit(OpCode.LW, resReg, addrReg, 0);
                }
                yield resReg;
            }

            case FieldAccessExpr fae -> {
                Register addrReg = (new ExprAddrCodeGen(asmProg)).visit(fae);
                Register resReg = Register.Virtual.create();

                if (fae.type instanceof BaseType bt && bt == BaseType.CHAR) {
                    text.emit(OpCode.LB, resReg, addrReg, 0);
                } else {
                    text.emit(OpCode.LW, resReg, addrReg, 0);
                }

                yield resReg;
            }

            case ValueAtExpr vae -> {
                Register ptrAddrReg = visit(vae.expr);
                Register resReg = Register.Virtual.create();

                if (vae.type instanceof BaseType bt && bt == BaseType.CHAR) {
                    text.emit(OpCode.LB, resReg, ptrAddrReg, 0);
                } else {
                    text.emit(OpCode.LW, resReg, ptrAddrReg, 0);
                }

                yield resReg;
            }

            case AddressOfExpr aoe -> (new ExprAddrCodeGen(asmProg)).visit(aoe);

            case SizeOfExpr s -> {
                Register resReg = Register.Virtual.create();
                int size = s.innerType.size();
                text.emit(OpCode.LI, resReg, size);
                yield resReg;
            }

            case TypecastExpr tce -> visit(tce.expr);

            case Assign a -> {
                Register rhsValReg = visit(a.rhs);
                if (a.lhs instanceof VarExpr v1 && v1.vd.hasVirtualReg()) {
                    Register lhsReg = v1.vd.virtualReg;
                    text.emit(OpCode.ADDI, lhsReg, rhsValReg, 0);
                    yield rhsValReg;
                }

                Register lhsAddrReg = (new ExprAddrCodeGen(asmProg)).visit(a.lhs);

                if (a.type instanceof BaseType bt && bt == BaseType.CHAR) {
                    text.emit(OpCode.SB, rhsValReg, lhsAddrReg, 0);
                } else {
                    text.emit(OpCode.SW, rhsValReg, lhsAddrReg, 0);
                }

                yield rhsValReg;
            }

            default -> throw new IllegalStateException("Unexpected value: " + e);
        };
    }



    private boolean isLibraryFunction(String functionName) {
        return switch (functionName) {
            case "print_s", "print_i", "print_c", "read_c", "read_i", "mcmalloc" -> true;
            default -> false;
        };
    }


}
