import lexer.Scanner;
import lexer.Tokeniser;
import org.junit.jupiter.api.Test;
import parser.Parser;
import java.io.*;

public class ParserTest {
    private static final String TEST_DIR =
            "/Users/leonpetrinos/Desktop/McGill/Winter/COMP-520/comp520-coursework-w2025/src/test/c_files/";

    void testParser(String fileName) throws IOException {
        Scanner scanner;
        String file = TEST_DIR + fileName;
        try {
            scanner = new Scanner(new File(file));
        } catch (FileNotFoundException e) {
            throw new FileNotFoundException("File " +fileName+ " does not exist");
        }

        Tokeniser tokeniser = new Tokeniser(scanner);
        Parser parser = new Parser(tokeniser);
        parser.parse();
        scanner.close();
    }

    @Test
    void testRandomlyGeneratedFile() throws IOException {
        String program = MiniCGenerator.generateProgram();
        String fileName = "random_file.c";
        File tempFile = new File(TEST_DIR + fileName);
        try (FileWriter writer = new FileWriter(tempFile)) {
            writer.write(program);
        }
        testParser(fileName);
    }

    @Test
    void testWierdLogandError() throws IOException {
        testParser("error.c");
    }
}
