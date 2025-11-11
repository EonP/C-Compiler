package gen;

import ast.Block;
import ast.Stmt;
import ast.While;
import ast.*;
import gen.asm.AssemblyProgram;
import gen.asm.Register;
import gen.asm.*;

import java.util.ArrayDeque;
import java.util.Deque;

public class StmtCodeGen extends CodeGen {

    private final Deque<Label> breakStack = new ArrayDeque<>();
    private final Deque<Label> continueStack = new ArrayDeque<>();
    private final Label epilogueLabel;

    public StmtCodeGen(AssemblyProgram asmProg, Label epilogueLabel) {
        this.epilogueLabel = epilogueLabel;
        this.asmProg = asmProg;
    }

    void visit(Stmt s) {
        AssemblyProgram.TextSection text = asmProg.getCurrentTextSection();
        switch (s) {
            case Block b -> {
                // no need to do anything with varDecl (memory allocator takes care of them)
                b.stmts.forEach(this::visit);
            }

            case While w -> {
                Label bodyLabel = Label.create("WHILE_BODY");
                Label endLabel = Label.create("WHILE_END");
                Label condLabel = Label.create("WHILE_COND");
                Register condReg;

                breakStack.push(endLabel);
                continueStack.push(condLabel);

                text.emit(condLabel);
                condReg = (new ExprValCodeGen(asmProg)).visit(w.condition);
                text.emit(OpCode.BEQZ, condReg, endLabel);
                text.emit(bodyLabel);

                visit(w.statement);

                condReg = (new ExprValCodeGen(asmProg)).visit(w.condition);
                text.emit(OpCode.BNEZ, condReg, bodyLabel);
                text.emit(endLabel);

                breakStack.pop();
                continueStack.pop();
            }

            case Break ignored -> {
                if (breakStack.isEmpty()) {
                    throw new IllegalStateException("Break used outside of a loop - Should not occur");
                }
                text.emit(OpCode.J, breakStack.peek());
            }

            case Continue ignored -> {
                if (continueStack.isEmpty()) {
                    throw new IllegalStateException("Continue used outside of a loop - Should not occur");
                }
                text.emit(OpCode.J, continueStack.peek());
            }

            case If i -> {
                Label endLabel = Label.create("IF_END");

                Register condReg = (new ExprValCodeGen(asmProg)).visit(i.condition);
                if (i.elseStatement == null) {
                    text.emit(OpCode.BEQZ, condReg, endLabel);
                    visit(i.ifStatement);
                    text.emit(endLabel);
                } else {
                    Label elseLabel = Label.create("ELSE_LABEL");
                    text.emit(OpCode.BEQZ, condReg, elseLabel);
                    visit(i.ifStatement);
                    text.emit(OpCode.J, endLabel);
                    text.emit(elseLabel);
                    visit(i.elseStatement);
                    text.emit(endLabel);
                }
            }

            case Return r -> {
                if (r.returnExpression == null) {
                    text.emit(OpCode.J, epilogueLabel);
                    return;
                }

                Register returnValReg = (new ExprValCodeGen(asmProg)).visit(r.returnExpression);
                if (r.returnExpression.type instanceof BaseType bt && bt == BaseType.VOID) {
                    text.emit(OpCode.J, epilogueLabel);
                    return;
                }

                int retValOffset = 4;

                if (r.returnExpression.type instanceof StructType st) {
                    int structSize = st.size();
                    Register tempReg = Register.Virtual.create();
                    for (int i = structSize - 1; i >= 0; --i) {
                        text.emit(OpCode.LB, tempReg, returnValReg, i);
                        text.emit(OpCode.SB, tempReg, Register.Arch.fp, retValOffset + i);
                    }
                } else if (r.returnExpression.type instanceof BaseType bt && bt == BaseType.CHAR){
                    text.emit(OpCode.SB, returnValReg, Register.Arch.fp, retValOffset);
                } else {
                    text.emit(OpCode.SW, returnValReg, Register.Arch.fp, retValOffset);
                }
                text.emit(OpCode.J, epilogueLabel);
            }

            case ExprStmt e -> {
                (new ExprValCodeGen(asmProg)).visit(e.expr);
            }

        }
    }


}
