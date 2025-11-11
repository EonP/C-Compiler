import ast.ASTPrinter;
import ast.Decl;
import ast.Program;
import ast.StructTypeDecl;
import lexer.Scanner;
import lexer.Tokeniser;
import org.junit.jupiter.api.Test;
import parser.Parser;
import sem.NameAnalyzer;
import sem.TypeAnalyzer;

import java.io.*;

public class ASTParserTest {

    private static final String TEST_DIR = "/Users/leonpetrinos/Desktop/McGill/Winter/COMP-520/comp520-coursework-w2025/src/test/c_files/";
    private static final String OUTPUT_FILENAME = "output.txt";

    static void parseAndPrintAST(String inputFilename, String outputFilename) throws IOException {
        Scanner scanner;
        String inputPath = TEST_DIR + inputFilename;
        try {
            scanner = new Scanner(new File(inputPath));
        } catch (FileNotFoundException e) {
            throw new FileNotFoundException("File " + inputFilename + " does not exist");
        }
        Tokeniser tokeniser = new Tokeniser(scanner);
        Parser parser = new Parser(tokeniser);
        Program program = parser.parse();

        String outputPath = TEST_DIR + outputFilename;
        PrintWriter writer = new PrintWriter(outputPath);
        ASTPrinter astPrinter = new ASTPrinter(writer);
        astPrinter.visit(program);
        scanner.close();
    }

    static void testStructSizes(String inputFilename) throws IOException {
        Scanner scanner;
        String inputPath = TEST_DIR + inputFilename;
        try {
            scanner = new Scanner(new File(inputPath));
        } catch (FileNotFoundException e) {
            throw new FileNotFoundException("File " + inputFilename + " does not exist");
        }
        Tokeniser tokeniser = new Tokeniser(scanner);
        Parser parser = new Parser(tokeniser);
        Program program = parser.parse();
        NameAnalyzer nameAnalyzer = new NameAnalyzer();
        nameAnalyzer.visit(program);
        TypeAnalyzer typeAnalyzer = new TypeAnalyzer();
        typeAnalyzer.visit(program);

        program.decls.forEach(
                decl -> {
                    if (decl instanceof StructTypeDecl std) {
                        System.out.println("Size of " + std.name + ": " + std.type.size());
                    }
                });


        scanner.close();
    }

    public static void main(String[] args) throws IOException {
        // parseAndPrintAST("recursive-struct.c", "outputAST.txt");
        testStructSizes("structs.c");
    }

}
