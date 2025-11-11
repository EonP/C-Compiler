import gen.asm.AssemblyProgram;
import gen.asm.Label;
import gen.asm.OpCode;
import gen.asm.Register;
import regalloc.GraphColouringRegAlloc;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

public class RegAllocTest {

    private static final String OUTPUT_FILE = "/Users/leonpetrinos/Desktop/McGill/Winter/COMP-520/comp520-coursework-w2025/src/test/regFile";
    private static final int FILE_NOT_FOUND = 2;

    public static AssemblyProgram buildSpillingProgram() {
        AssemblyProgram prog = new AssemblyProgram();
        AssemblyProgram.TextSection text = prog.emitNewTextSection();

        Register.Virtual[] v = new Register.Virtual[5];  // 5 virtual registers
        for (int i = 0; i < v.length; i++) {
            v[i] = Register.Virtual.create();
        }

        Label main = Label.getFunctionLabel("main");
        text.emit(Label.create("_start"));
        text.emit(OpCode.JAL, main);
        text.emit(OpCode.LI, Register.Arch.v0, 10);
        text.emit(OpCode.SYSCALL);

        AssemblyProgram.TextSection mainSec = prog.emitNewTextSection();
        mainSec.emit(main);

        // v0 = 1
        mainSec.emit(OpCode.LI, v[0], 1);
        // v1 = v0 + v0
        mainSec.emit(OpCode.ADD, v[1], v[0], v[0]);
        // v2 = v1 + v0
        mainSec.emit(OpCode.ADD, v[2], v[1], v[0]);
        // v3 = v2 + v1 → now v0, v1, v2, v3 all live (4 total)
        mainSec.emit(OpCode.ADD, v[3], v[2], v[1]);
        // v4 = v3 + v2 → now v1, v2, v3, v4 live (another 4 overlap)
        mainSec.emit(OpCode.ADD, v[4], v[3], v[2]);

        // Use v4 so it's not optimized away
        mainSec.emit(OpCode.ADD, Register.Arch.a0, v[4], Register.Arch.zero);
        mainSec.emit(OpCode.LI, Register.Arch.v0, 1);
        mainSec.emit(OpCode.SYSCALL);

        mainSec.emit(OpCode.JR, Register.Arch.ra);
        return prog;
    }


    public static AssemblyProgram build() {
        AssemblyProgram prog = new AssemblyProgram();

        Register.Virtual[] v = new Register.Virtual[20];
        for (int i = 0; i < v.length; i++) {
            v[i] = Register.Virtual.create();
        }

        AssemblyProgram.TextSection entryPoint = prog.emitNewTextSection();

        entryPoint.emit(Label.create("_start"));
        entryPoint.emit(OpCode.JAL, Label.getFunctionLabel("main"));
        entryPoint.emit(OpCode.LI, Register.Arch.v0, 10);
        entryPoint.emit(OpCode.SYSCALL);

        AssemblyProgram.TextSection main = prog.emitNewTextSection();

        main.emit(Label.createFunDefLabel("main"));
        main.emit(OpCode.LI, v[0], 1);
        main.emit(OpCode.ADD, v[1], v[0], v[0]);
        main.emit(OpCode.ADD, v[2], v[1], v[0]);
        main.emit(OpCode.ADD, v[3], v[2], v[1]);
        main.emit(OpCode.ADD, v[4], v[3], v[2]);
        main.emit(OpCode.ADD, v[5], v[4], v[3]);
        main.emit(OpCode.ADD, v[6], v[5], v[4]);
        main.emit(OpCode.ADD, v[7], v[6], v[5]);
        main.emit(OpCode.ADD, v[8], v[7], v[6]);
        main.emit(OpCode.ADD, v[9], v[8], v[7]);

        // these live ranges start overlapping heavily
        main.emit(OpCode.ADD, v[10], v[0], v[9]);
        main.emit(OpCode.ADD, v[11], v[1], v[10]);
        main.emit(OpCode.ADD, v[12], v[2], v[11]);
        main.emit(OpCode.ADD, v[13], v[3], v[12]);
        main.emit(OpCode.ADD, v[14], v[4], v[13]);
        main.emit(OpCode.ADD, v[15], v[5], v[14]);
        main.emit(OpCode.ADD, v[16], v[6], v[15]);
        main.emit(OpCode.ADD, v[17], v[7], v[16]);
        main.emit(OpCode.ADD, v[18], v[8], v[17]);

        main.emit(OpCode.ADD, Register.Arch.a0, v[18], Register.Arch.zero);
        main.emit(OpCode.LI, Register.Arch.v0, 1);
        main.emit(OpCode.SYSCALL);

        main.emit(OpCode.JR, Register.Arch.ra);

        return prog;
    }

    public static AssemblyProgram buildGuaranteedSpillingProgram() {
        AssemblyProgram prog = new AssemblyProgram();
        AssemblyProgram.TextSection text = prog.emitNewTextSection();

        Register.Virtual[] v = new Register.Virtual[5];
        for (int i = 0; i < 5; i++) {
            v[i] = Register.Virtual.create();
        }

        Label main = Label.getFunctionLabel("main");
        text.emit(Label.create("_start"));
        text.emit(OpCode.JAL, main);
        text.emit(OpCode.LI, Register.Arch.v0, 10);
        text.emit(OpCode.SYSCALL);

        AssemblyProgram.TextSection mainSec = prog.emitNewTextSection();
        mainSec.emit(main);

        // Define all virtuals early
        mainSec.emit(OpCode.LI, v[0], 10);
        mainSec.emit(OpCode.LI, v[1], 11);
        mainSec.emit(OpCode.LI, v[2], 12);
        mainSec.emit(OpCode.LI, v[3], 13);
        mainSec.emit(OpCode.LI, v[4], 14);

        // All virtuals are used together later → max interference
        mainSec.emit(OpCode.ADD, Register.Virtual.create(), v[0], v[1]);
        mainSec.emit(OpCode.ADD, Register.Virtual.create(), v[2], v[3]);
        mainSec.emit(OpCode.ADD, Register.Virtual.create(), v[4], v[0]);
        mainSec.emit(OpCode.ADD, Register.Arch.a0, v[1], v[2]);  // force use

        mainSec.emit(OpCode.LI, Register.Arch.v0, 1);
        mainSec.emit(OpCode.SYSCALL);
        mainSec.emit(OpCode.JR, Register.Arch.ra);

        return prog;
    }


    public static void main(String[] args) {
        AssemblyProgram program = buildGuaranteedSpillingProgram();
        var programWithoutVRegs = GraphColouringRegAlloc.INSTANCE.apply(program);

        File f = new File(OUTPUT_FILE);

        PrintWriter writer;
        try {
            writer = new PrintWriter(f);
        } catch (FileNotFoundException e) {
            System.out.println("Cannot write to output file " + f + ".");
            System.exit(FILE_NOT_FOUND);
            return;
        }
        programWithoutVRegs.print(writer);
        writer.close();
    }
}
