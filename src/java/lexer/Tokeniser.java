package lexer;

import util.CompilerPass;

import java.util.Map;
import java.util.Optional;
import java.util.Set;

/**
 * @author cdubach
 */
public class Tokeniser extends CompilerPass {

    private final Scanner scanner;

    private static final Set<Character> SPECIAL_CHARS = Set.of(
            '`', '~', '@', '!', '$', '#', '^', '*', '%', '&', '(', ')', '[', ']',
            '{', '}', '<', '>', '+', '=', '_', '-', '|', '/', ';', ':', ',', '.', '?'
    );

    private static final Map<String, Token.Category> KEYWORD_MAP = Map.ofEntries(
            Map.entry("int", Token.Category.INT),
            Map.entry("void", Token.Category.VOID),
            Map.entry("char", Token.Category.CHAR),
            Map.entry("if", Token.Category.IF),
            Map.entry("else", Token.Category.ELSE),
            Map.entry("while", Token.Category.WHILE),
            Map.entry("return", Token.Category.RETURN),
            Map.entry("struct", Token.Category.STRUCT),
            Map.entry("sizeof", Token.Category.SIZEOF),
            Map.entry("continue", Token.Category.CONTINUE),
            Map.entry("break", Token.Category.BREAK),
            Map.entry("class", Token.Category.CLASS),
            Map.entry("extends", Token.Category.EXTENDS),
            Map.entry("new", Token.Category.NEW)
    );

    public Tokeniser(Scanner scanner) {
        this.scanner = scanner;
    }

    public Token nextToken() {

        int line = scanner.getLine();
        int col = scanner.getColumn();

        if (!scanner.hasNext()) {
            return new Token(Token.Category.EOF, line, col);
        }

        char c = scanner.next();

        if (Character.isWhitespace(c)) {
            return nextToken();
        }

        return switch (c) {
            case '{' -> new Token(Token.Category.LBRA, line, col);
            case '}' -> new Token(Token.Category.RBRA, line, col);
            case '(' -> new Token(Token.Category.LPAR, line, col);
            case ')' -> new Token(Token.Category.RPAR, line, col);
            case '[' -> new Token(Token.Category.LSBR, line, col);
            case ']' -> new Token(Token.Category.RSBR, line, col);
            case ';' -> new Token(Token.Category.SC, line, col);
            case ',' -> new Token(Token.Category.COMMA, line, col);
            case '+' -> new Token(Token.Category.PLUS, line, col);
            case '-' -> new Token(Token.Category.MINUS, line, col);
            case '*' -> new Token(Token.Category.ASTERISK, line, col);
            case '%' -> new Token(Token.Category.REM, line, col);
            case '.' -> new Token(Token.Category.DOT, line, col);
            case '=' -> currentOrCombined(c, '=', Token.Category.ASSIGN, Token.Category.EQ, line, col);
            case '&' -> currentOrCombined(c, '&', Token.Category.AND, Token.Category.LOGAND, line, col);
            case '|' -> currentOrCombined(c, '|', Token.Category.INVALID, Token.Category.LOGOR, line, col);
            case '!' -> currentOrCombined(c, '=', Token.Category.INVALID, Token.Category.NE, line, col);
            case '<' -> currentOrCombined(c, '=', Token.Category.LT, Token.Category.LE, line, col);
            case '>' -> currentOrCombined(c, '=', Token.Category.GT, Token.Category.GE, line, col);
            case '/' -> handleCommentOrDivision(c, line, col);
            case '#' -> handleIncludeKeyword(c, line, col);
            case '\'' -> handleCharLiteral(c, line, col);
            case '"' -> handleStringLiteral(c, line, col);
            default ->
                    isASCIIDigit(c) ? handleIntLiteral(c, line, col) :
                            (isASCIILetter(c) || c == '_') ? handleIdentifier(c, line, col) :
                                    invalidToken(c, line, col);
        };
    }

    private void error(char c, int line, int col) {
        String msg = "Lexing error: unrecognised character ("+c+") at "+line+":"+col;
        System.out.println(msg);
        incError();
    }

    private boolean isASCIILetter(char c) {
        return ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z');
    }

    private boolean isASCIIDigit(char c) {
        return '0' <= c && c <= '9';
    }

    private boolean isValidInCharLiteral(char c) {
        return isASCIILetter(c) || isASCIIDigit(c) || SPECIAL_CHARS.contains(c) || c == '"' || Character.isWhitespace(c);
    }

    private boolean isValidInStringLiteral(char c) {
        return isASCIILetter(c) || isASCIIDigit(c) || SPECIAL_CHARS.contains(c) || c == '\'' || Character.isWhitespace(c);
    }

    private boolean isValidIdentifierChar(char c) {
        return isASCIILetter(c) || isASCIIDigit(c) || c == '_';
    }

    private Token invalidToken(char c, int line, int col) {
        error(c, line, col);
        return new Token(Token.Category.INVALID, line, col);
    }

    private Token currentOrCombined(char c, char expectedNext, Token.Category currentCategory, Token.Category combinedCategory, int line, int col) {
        if (scanner.hasNext() && scanner.peek() == expectedNext) {
            scanner.next();
            return new Token(combinedCategory, line, col);
        }
        if (currentCategory == Token.Category.INVALID)
            error(c, line, col);
        return new Token(currentCategory, line, col);
    }

    private Token handleCommentOrDivision(char c, int line, int col) {
        if (scanner.hasNext()) {
            char next = scanner.peek();
            // Single line comment
            if (next == '/') {
                scanner.next();
                while (scanner.hasNext() && scanner.peek() != '\n') {
                    scanner.next();
                }
                return nextToken();

            }
            // Multiline comment
            if (next == '*') {
                scanner.next();
                while (scanner.hasNext()) {
                    if (scanner.next() == '*' && scanner.hasNext() && scanner.next() == '/') {
                        return nextToken();
                    }
                }
                return invalidToken(c, line, col);
            }
        }

        return new Token(Token.Category.DIV, line, col);
    }

    private Token handleIncludeKeyword(char c, int line, int col) {
        String ideal = "include";
        for (int i = 0; i < ideal.length(); i++) {
            if (!scanner.hasNext()) {
                return invalidToken(c, line, col);
            }

            char nextChar = scanner.next();
            if (nextChar != ideal.charAt(i)) {
                return invalidToken(c, line, col);
            }
        }
        return new Token(Token.Category.INCLUDE, line, col);
    }

    private Optional<Character> getEscapedChar(char escapedChar) {
        return switch (escapedChar) {
            case 'a' -> Optional.of('\u0007'); // '\a'
            case 'b' -> Optional.of('\b');
            case 'n' -> Optional.of('\n');
            case 'r' -> Optional.of('\r');
            case 't' -> Optional.of('\t');
            case '\\' -> Optional.of('\\');
            case '\'' -> Optional.of('\'');
            case '"' -> Optional.of('\"');
            case '0' -> Optional.of('\0');
            default -> Optional.empty(); // invalid escape character
        };
    }

    private Token handleCharLiteral(char c, int line, int col) {
        if (!scanner.hasNext()) {
            return invalidToken(c, line, col);
        }
        // First char inside
        char next = scanner.next();
        // Check if escape character
        if (next == '\\') {
            if (!scanner.hasNext()) {
                return invalidToken(c, line, col);
            }
            next = scanner.next();
            Optional<Character> escapeChar = getEscapedChar(next);
            if (escapeChar.isEmpty()) {
                return invalidToken(c, line, col);
            }
            next = escapeChar.get(); // Correct escape character
        } else if (!isValidInCharLiteral(next)) {
            return invalidToken(c, line, col);
        }

        // closing quote check
        if (!scanner.hasNext() || scanner.peek() != '\'') {
            return invalidToken(c, line, col);
        }
        scanner.next();
        return new Token(Token.Category.CHAR_LITERAL, Character.toString(next), line, col);
    }

    private Token handleStringLiteral(char c, int line, int col) {
        StringBuilder sb = new StringBuilder();
        while (scanner.hasNext()) {
            char next = scanner.next();
            // End of string
            if (next == '"') {
                return new Token(Token.Category.STRING_LITERAL, sb.toString(), line, col);
            }
            // Escape characters
            if (next == '\\') {
                if (!scanner.hasNext()) {
                    return invalidToken(c, line, col);
                }
                next = scanner.next();
                Optional<Character> escapeChar = getEscapedChar(next);
                if (escapeChar.isEmpty()) {
                    return invalidToken(c, line, col);
                }
                sb.append(escapeChar.get());
            } else if (isValidInStringLiteral(next)) { // not escape but valid
                sb.append(next);
            } else { // invalid
                return invalidToken(c, line, col);
            }
        }
        return invalidToken(c, line, col);
    }

    private Token handleIntLiteral(char c, int line, int col) {
        StringBuilder sb = new StringBuilder();
        sb.append(c);
        while (scanner.hasNext() && isASCIIDigit(scanner.peek())) {
            sb.append(scanner.next());
        }
        return new Token(Token.Category.INT_LITERAL, sb.toString(), line, col);
    }

    private Token handleIdentifier(char c, int line, int col) {
        StringBuilder sb = new StringBuilder();
        sb.append(c);
        while (scanner.hasNext() && isValidIdentifierChar(scanner.peek())) {
            sb.append(scanner.next());
        }
        String s = sb.toString();
        return KEYWORD_MAP.containsKey(s) ?
                new Token(KEYWORD_MAP.get(s), line, col) :
                new Token(Token.Category.IDENTIFIER, s, line, col);
    }

}
