package gen;

import ast.BaseType;
import ast.FunDef;
import gen.asm.*;
import gen.asm.OpCode;

/**
 * A visitor that produces code for a single function declaration
 */
public class FunCodeGen extends CodeGen {


    public FunCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    void visit(FunDef fd) {
        // Each function should be produced in its own section.
        // This is necessary for the register allocator.
        AssemblyProgram.TextSection text = asmProg.emitNewTextSection();
        Label fdLabel = Label.createFunDefLabel(fd.name);
        text.emit(fdLabel);

        emitPrologue(text, fd.localVarSpace);
        Label epilogueLabel = Label.createEpilogueLabel(fd.name);
        emitBody(fd, epilogueLabel);
        text.emit(epilogueLabel);
        emitEpilogue(text);
    }



    private void emitPrologue(AssemblyProgram.TextSection text, int localVarSpace) {
        text.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -4);
        text.emit(OpCode.SW, Register.Arch.fp, Register.Arch.sp, 0);     // push fp on stack
        text.emit(OpCode.ADDIU, Register.Arch.fp, Register.Arch.sp, 0);   // initialize fp to sp
        text.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -4);
        text.emit(OpCode.SW, Register.Arch.ra, Register.Arch.sp, 0);     // push ra on stack
        if (localVarSpace > 0) {
            text.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -localVarSpace); // allocate space for local variables
        }
        text.emit(OpCode.PUSH_REGISTERS);   // push registers to be used
    }

    private void emitEpilogue(AssemblyProgram.TextSection text) {
        text.emit(OpCode.POP_REGISTERS); // restore registers
        text.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.fp, 4); // restore sp
        text.emit(OpCode.LW, Register.Arch.ra, Register.Arch.fp, -4); // restore return address
        text.emit(OpCode.LW, Register.Arch.fp, Register.Arch.fp, 0); // restore FP
        text.emit(OpCode.JR, Register.Arch.ra); // return to caller
    }

    private void emitBody(FunDef fd, Label epilogueLabel) {
        StmtCodeGen scd = new StmtCodeGen(asmProg, epilogueLabel);
        scd.visit(fd.block);
    }

    public void emitLibraryFunctions() {
        AssemblyProgram.TextSection text = asmProg.emitNewTextSection();

        Label print_s = Label.createFunDefLabel("print_s");
        text.emit(print_s);
        text.emit(OpCode.LI, Register.Arch.v0, 4);
        text.emit(OpCode.SYSCALL);
        text.emit(OpCode.JR, Register.Arch.ra);

        text = asmProg.emitNewTextSection();
        Label print_i = Label.createFunDefLabel("print_i");
        text.emit(print_i);
        text.emit(OpCode.LI, Register.Arch.v0, 1);
        text.emit(OpCode.SYSCALL);
        text.emit(OpCode.JR, Register.Arch.ra);

        text = asmProg.emitNewTextSection();
        Label print_c = Label.createFunDefLabel("print_c");
        text.emit(print_c);
        text.emit(OpCode.LI, Register.Arch.v0, 11);
        text.emit(OpCode.SYSCALL);
        text.emit(OpCode.JR, Register.Arch.ra);

        text = asmProg.emitNewTextSection();
        Label read_c = Label.createFunDefLabel("read_c");
        text.emit(read_c);
        text.emit(OpCode.LI, Register.Arch.v0, 12);
        text.emit(OpCode.SYSCALL);
        text.emit(OpCode.JR, Register.Arch.ra);

        text = asmProg.emitNewTextSection();
        Label read_i = Label.createFunDefLabel("read_i");
        text.emit(read_i);
        text.emit(OpCode.LI, Register.Arch.v0, 5);
        text.emit(OpCode.SYSCALL);
        text.emit(OpCode.JR, Register.Arch.ra);

        text = asmProg.emitNewTextSection();
        Label mcmalloc = Label.createFunDefLabel("mcmalloc");
        text.emit(mcmalloc);
        text.emit(OpCode.LI, Register.Arch.v0, 9);
        text.emit(OpCode.SYSCALL);
        text.emit(OpCode.JR, Register.Arch.ra);
    }

}
