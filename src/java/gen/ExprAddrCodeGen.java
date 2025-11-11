package gen;

import ast.*;
import gen.asm.AssemblyProgram;
import gen.asm.OpCode;
import gen.asm.Register;

/**
 * Generates code to calculate the address of an expression and return the result in a register.
 */
public class ExprAddrCodeGen extends CodeGen {

    public ExprAddrCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    public Register visit(Expr e) {
        AssemblyProgram.TextSection text = asmProg.getCurrentTextSection();
        return switch (e) {
            case IntLiteral ignored -> throw new IllegalStateException("IntLiteral has no address");

            case ChrLiteral ignored -> throw new IllegalStateException("ChrLiteral has no address");

            case StrLiteral s -> {
                Register resReg = Register.Virtual.create();
                text.emit(OpCode.LA, resReg, s.label);
                yield resReg;
            }

            case VarExpr v -> {
                if (v.vd.hasVirtualReg()) {
                    yield v.vd.virtualReg;
                }
                Register resReg = Register.Virtual.create();
                if (v.vd.global) {
                    text.emit(OpCode.LA, resReg, v.vd.label);
                } else {
                    if (v.vd.isFunctionParam && v.type instanceof ArrayType) {
                        text.emit(OpCode.LW, resReg, Register.Arch.fp, v.vd.fpOffset);
                    } else {
                        text.emit(OpCode.ADDI, resReg, Register.Arch.fp, v.vd.fpOffset);
                    }
                }
                yield resReg;
            }

            case FunCallExpr f -> (new ExprValCodeGen(asmProg)).visit(f);

            case BinOp ignored -> throw new IllegalStateException("BinOp has no address");

            case ArrayAccessExpr aae -> {
                Register baseAddrReg;
                if (aae.array.type instanceof PointerType) {
                    baseAddrReg = (new ExprValCodeGen(asmProg)).visit(aae.array); // pointer type
                } else {
                    baseAddrReg = visit(aae.array); // array type
                }

                Register indexValReg = (new ExprValCodeGen(asmProg)).visit(aae.index);

                int elemSize = aae.type.size();
                Register resReg = Register.Virtual.create();
                text.emit(OpCode.LI, resReg, elemSize);

                text.emit(OpCode.MUL, resReg, indexValReg, resReg);

                text.emit(OpCode.ADD, resReg, baseAddrReg, resReg);
                yield resReg;
            }

            case FieldAccessExpr fae -> {
                Register structAddr = visit(fae.structOrClass);
                StructType type = (StructType) fae.structOrClass.type;
                StructTypeDecl std = type.std;

                String fieldName = fae.fieldName;
                int fieldOffset = 0;
                for (VarDecl field : std.fields) {

                    int fieldSize = field.type.size();
                    int fieldAlignment = field.type.alignment();

                    if (fieldOffset % fieldAlignment != 0) {
                        fieldOffset += fieldAlignment - (fieldOffset % fieldAlignment);
                    }

                    if (field.name.equals(fieldName)) {
                        break;
                    }

                    fieldOffset += fieldSize;
                }

                Register resReg = Register.Virtual.create();
                text.emit(OpCode.ADDI, resReg, structAddr, fieldOffset);
                yield resReg;
            }

            case ValueAtExpr vae -> (new ExprValCodeGen(asmProg)).visit(vae.expr);

            case AddressOfExpr aoe -> visit(aoe.expr);

            case SizeOfExpr ignored -> throw new IllegalStateException("SizeOfExpr has no address");

            case TypecastExpr tce -> visit(tce.expr);

            case Assign a -> {
                Register lhsAddrReg = visit(a.lhs);
                if (a.type instanceof StructType st) {
                    Register rhsAddrReg = visit(a.rhs);

                    Register temp = Register.Virtual.create();
                    int structSize = st.size();

                    for (int i = structSize - 1; i >= 0; --i) {
                        text.emit(OpCode.LB, temp, rhsAddrReg, i);
                        text.emit(OpCode.SB, temp, lhsAddrReg, i);
                    }

                } else {
                    Register rhsValReg = (new ExprValCodeGen(asmProg)).visit(a.rhs);
                    if (a.lhs instanceof VarExpr v && v.vd.hasVirtualReg()) {
                        text.emit(OpCode.ADD, lhsAddrReg, rhsValReg, Register.Arch.zero);
                        yield rhsValReg;
                    }
                    if (a.type instanceof BaseType bt && bt == BaseType.CHAR) {
                        text.emit(OpCode.SB, rhsValReg, lhsAddrReg, 0);
                    } else {
                        text.emit(OpCode.SW, rhsValReg, lhsAddrReg, 0);
                    }
                }
                yield lhsAddrReg;
            }

            default -> throw new IllegalStateException("Unexpected value: " + e);
        };
    }

}
