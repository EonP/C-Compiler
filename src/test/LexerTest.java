import lexer.Scanner;
import lexer.Tokeniser;
import org.junit.jupiter.api.Test;

import java.io.*;
import java.util.ArrayList;

import static org.junit.jupiter.api.Assertions.assertEquals;
import lexer.Token;

public class LexerTest {

    void testLexer(String fileName, Token...expectedTokens) throws IOException {
        Scanner scanner;
        String file = "/Users/leonpetrinos/Desktop/McGill/Winter/COMP-520/comp520-coursework-w2025/src/test/c_files/" + fileName;
        try {
            scanner = new Scanner(new File(file));
        } catch (FileNotFoundException e) {
            throw new FileNotFoundException("File " +fileName+ " does not exist");
        }

        Tokeniser tokeniser = new Tokeniser(scanner);
        int i = 0;
        ArrayList<Token> actualTokens = new ArrayList<>();
        while (scanner.hasNext()) {
            Token t = tokeniser.nextToken();
            actualTokens.add(t);
            ++i;
        }
        scanner.close();

        assertEquals(expectedTokens.length, actualTokens.size(), "Extra tokens produced by lexer at index " + i);
        for (i = 0; i < expectedTokens.length; ++i) {
            Token exp = expectedTokens[i];
            Token act = actualTokens.get(i);

            assertEquals(exp.category.toString(), act.category.toString(),
                    "Mismatch at token index " + i + ": Expected " + expectedTokens[i] + " but found " + actualTokens.get(i));
            assertEquals(exp.data.toString(), act.data.toString());
            //assertEquals(exp.position.toString(), act.position.toString(), "Different Positions for " + exp.toString());
        }
    }

    @Test
    void testInvalids() throws IOException {
        String fileName = "invalids.c";
        Token[] expectedTokens = new Token[] {
                new Token(Token.Category.INVALID, 1, 1),
                new Token(Token.Category.INVALID, 3, 1),
                new Token(Token.Category.INVALID, 5, 1)
        };
        testLexer(fileName, expectedTokens);
    }

    @Test
    void testEscapeChars() throws IOException {
        String fileName = "escape_chars.c";
        Token[] expectedTokens = new Token[] {
                new Token(Token.Category.CHAR, 1, 1),
                new Token(Token.Category.IDENTIFIER,"bell", 1, 6),
                new Token(Token.Category.ASSIGN, 1, 11),
                new Token(Token.Category.CHAR_LITERAL, "\u0007",1, 13),
                new Token(Token.Category.SC, 1, 17),

                new Token(Token.Category.CHAR, 2, 1),
                new Token(Token.Category.IDENTIFIER, "b", 2, 6),
                new Token(Token.Category.ASSIGN, 2, 8),
                new Token(Token.Category.CHAR_LITERAL, "\b", 2, 10),
                new Token(Token.Category.SC,  2, 14),

                new Token(Token.Category.CHAR, 3, 1),
                new Token(Token.Category.IDENTIFIER, "newline", 3, 6),
                new Token(Token.Category.ASSIGN, 3, 14),
                new Token(Token.Category.CHAR_LITERAL, "\n", 3, 16),
                new Token(Token.Category.SC,  3, 20),


                new Token(Token.Category.CHAR, 4, 1),
                new Token(Token.Category.IDENTIFIER, "r", 4, 6),
                new Token(Token.Category.ASSIGN, 4, 8),
                new Token(Token.Category.CHAR_LITERAL, "\r", 4, 10),
                new Token(Token.Category.SC,  4, 14),


                new Token(Token.Category.CHAR, 5, 1),
                new Token(Token.Category.IDENTIFIER, "tab", 5, 6),
                new Token(Token.Category.ASSIGN, 5, 10),
                new Token(Token.Category.CHAR_LITERAL, "\t", 5, 12),
                new Token(Token.Category.SC,  5, 16),


                new Token(Token.Category.CHAR, 6, 1),
                new Token(Token.Category.IDENTIFIER, "backslash", 6, 6),
                new Token(Token.Category.ASSIGN, 6, 16),
                new Token(Token.Category.CHAR_LITERAL, "\\", 6, 18),
                new Token(Token.Category.SC,  6, 22),


                new Token(Token.Category.CHAR, 7, 1),
                new Token(Token.Category.IDENTIFIER, "singleQuote", 7, 6),
                new Token(Token.Category.ASSIGN, 7, 18),
                new Token(Token.Category.CHAR_LITERAL, "'", 7, 20),
                new Token(Token.Category.SC,  7, 24),

                new Token(Token.Category.CHAR, 8, 1),
                new Token(Token.Category.IDENTIFIER, "doubleQuote", 8, 6),
                new Token(Token.Category.ASSIGN, 8, 18),
                new Token(Token.Category.CHAR_LITERAL, "\"", 8, 20),
                new Token(Token.Category.SC,  8, 24),

                new Token(Token.Category.CHAR, 9, 1),
                new Token(Token.Category.IDENTIFIER, "nullChar", 9, 6),
                new Token(Token.Category.ASSIGN, 9, 15),
                new Token(Token.Category.CHAR_LITERAL, "\0", 9, 17),
                new Token(Token.Category.SC, 9, 21)
        };
        testLexer(fileName, expectedTokens);
    }

    @Test
    void testFullTest() throws IOException {
        String fileName = "full_test.c";
        Token[] expectedTokens = new Token[] {
                new Token(Token.Category.INCLUDE, 1, 1),
                new Token(Token.Category.STRING_LITERAL, "Something", 1, 1),
                new Token(Token.Category.INT, 5, 1),
                new Token(Token.Category.ASTERISK, 5, 1),
                new Token(Token.Category.IDENTIFIER, "p", 5, 1),
                new Token(Token.Category.SC, 5, 1),
                new Token(Token.Category.INT_LITERAL, "2", 5, 1),
                new Token(Token.Category.IDENTIFIER, "_HEllo", 5, 1),
                new Token(Token.Category.IDENTIFIER, "_HEllo", 5, 1),
                new Token(Token.Category.ASSIGN, 5, 1),
                new Token(Token.Category.IDENTIFIER, "Asv", 5, 1),
                new Token(Token.Category.STRING_LITERAL, "I am a \"string\"", 5, 1),
                new Token(Token.Category.STRING_LITERAL, "hello", 5, 1),
                new Token(Token.Category.IF, 5, 1),
                new Token(Token.Category.ELSE, 5, 1),
                new Token(Token.Category.WHILE, 5, 1),
                new Token(Token.Category.RETURN, 5, 1),
                new Token(Token.Category.STRUCT, 5, 1),
                new Token(Token.Category.SIZEOF, 5, 1),
                new Token(Token.Category.CONTINUE, 5, 1),
                new Token(Token.Category.BREAK, 5, 1),
                new Token(Token.Category.LBRA, 5, 1),
                new Token(Token.Category.RBRA, 5, 1),
                new Token(Token.Category.LPAR, 5, 1),
                new Token(Token.Category.RPAR, 5, 1),
                new Token(Token.Category.LSBR, 5, 1),
                new Token(Token.Category.RSBR, 5, 1),
                new Token(Token.Category.SC, 5, 1),
                new Token(Token.Category.COMMA, 5, 1),
                new Token(Token.Category.INT, 5, 1),
                new Token(Token.Category.VOID, 5, 1),
                new Token(Token.Category.CHAR, 5, 1),
                new Token(Token.Category.INT_LITERAL, "932479132749",5, 1),
                new Token(Token.Category.LOGAND, 5, 1),
                new Token(Token.Category.AND, 5, 1),
                new Token(Token.Category.LOGOR, 5, 1),
                new Token(Token.Category.INVALID, 5, 1),
                new Token(Token.Category.EQ, 5, 1),
                new Token(Token.Category.ASSIGN, 5, 1),
                new Token(Token.Category.NE, 5, 1),
                new Token(Token.Category.LT, 5, 1),
                new Token(Token.Category.LE, 5, 1),
                new Token(Token.Category.LT, 5, 1),
                new Token(Token.Category.GT, 5, 1),
                new Token(Token.Category.GE, 5, 1),
                new Token(Token.Category.GT, 5, 1),
                new Token(Token.Category.PLUS, 5, 1),
                new Token(Token.Category.MINUS, 5, 1),
                new Token(Token.Category.ASTERISK, 5, 1),
                new Token(Token.Category.DIV, 5, 1),
                new Token(Token.Category.REM, 5, 1),
                new Token(Token.Category.DOT, 5, 1),
                new Token(Token.Category.INVALID, 5, 1),
                new Token(Token.Category.INVALID, 5, 1),
                new Token(Token.Category.STRING_LITERAL, 5, 1),
                new Token(Token.Category.INVALID,  5, 1)
        };
        testLexer(fileName, expectedTokens);
    }

    @Test
    void testPeculiar() throws IOException {
        String fileName = "peculiar.c";
        Token[] expectedTokens = new Token[] {
                new Token(Token.Category.STRING_LITERAL, "\b\u0007\t",1, 1),
        };
        testLexer(fileName, expectedTokens);
    }


}
