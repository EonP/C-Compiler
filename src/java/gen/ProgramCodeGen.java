package gen;

import ast.FunDef;
import ast.Program;
import gen.asm.*;

/**
 * This visitor should produce a program.
 */
public class ProgramCodeGen extends CodeGen {

    public ProgramCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    void generate(Program p) {
        RegisterPromotionPass rp = new RegisterPromotionPass();
        rp.visit(p);

        // allocate all variables
        MemAllocCodeGen allocator = new MemAllocCodeGen(asmProg);
        allocator.visit(p);

        AssemblyProgram.TextSection entryPoint = asmProg.emitNewTextSection();
        entryPoint.emit(Label.create("_start"));
        entryPoint.emit(OpCode.JAL, Label.getFunctionLabel("main"));
        entryPoint.emit(OpCode.LI, Register.Arch.v0, 10);
        entryPoint.emit(OpCode.SYSCALL);

        // generate the code for each function
        p.decls.forEach((d) -> {
            switch(d) {
                case FunDef fd -> {
                    FunCodeGen fcg = new FunCodeGen(asmProg);
                    fcg.visit(fd);
                }
                default -> {}// nothing to do
            }});

        // generate code for lib functions
        FunCodeGen libFcg = new FunCodeGen(asmProg);
        libFcg.emitLibraryFunctions();
    }





}
