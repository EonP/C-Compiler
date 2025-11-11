package parser;


import ast.*;
import lexer.Token;
import lexer.Token.Category;
import lexer.Tokeniser;
import util.CompilerPass;

import java.util.*;


/**
 * @author cdubach
 */
public class Parser extends CompilerPass {

    private Token token;

    private final Queue<Token> buffer = new LinkedList<>();

    private final Tokeniser tokeniser;

    private static final Category[] EXP_FIRST_SET = {
        Category.IDENTIFIER, Category.INT_LITERAL, Category.LPAR, Category.MINUS, Category.PLUS,
        Category.ASTERISK, Category.AND, Category.CHAR_LITERAL, Category.STRING_LITERAL, Category.SIZEOF, Category.NEW
    };

    private static final Category[] TYPE_FIRST_SET = {
        Category.INT, Category.CHAR, Category.VOID, Category.STRUCT, Category.CLASS
    };

    private static final Category[] STMT_FIRST_SET = {
        Category.IDENTIFIER, Category.INT_LITERAL, Category.LPAR, Category.MINUS, Category.PLUS,
        Category.ASTERISK, Category.AND, Category.CHAR_LITERAL, Category.STRING_LITERAL, Category.SIZEOF, Category.NEW,
        Category.LBRA, Category.WHILE, Category.IF, Category.RETURN, Category.CONTINUE, Category.BREAK
    };

    public Parser(Tokeniser tokeniser) {
        this.tokeniser = tokeniser;
    }

    /**
     * Parses the program
     */
    public Program parse() {
        // get the first token
        nextToken();
        return parseProgram();
    }

    //private int error = 0;
    private Token lastErrorToken;

    private void error(Category... expected) {

        if (lastErrorToken == token) {
            // skip this error, same token causing trouble
            return;
        }

        StringJoiner sj = new StringJoiner("|");
        for (Category e : expected) {
            sj.add(e.toString());
        }
        String msg = "Parsing error: expected (" + sj + ") found (" + token + ") at " + token.position;
        System.out.println(msg);

        incError();
        lastErrorToken = token;
    }

    /**
     * Look ahead the i^th element from the stream of token.
     * i should be >= 1
     */
    private Token lookAhead(int i) {
        // ensures the buffer has the element we want to look ahead
        while (buffer.size() < i)
        buffer.add(tokeniser.nextToken());

        int cnt = 1;
        for (Token t : buffer) {
            if (cnt == i)
            return t;
            cnt++;
        }

        assert false; // should never reach this
        return tokeniser.nextToken();
    }


    /**
     * Consumes the next token from the tokeniser or the buffer if not empty.
     */
    private void nextToken() {
        token = !buffer.isEmpty() ? buffer.remove() : tokeniser.nextToken();
    }

    /**
     * If the current token is equals to the expected one, then skip it, otherwise report an error.
     */
    private Token expect(Category... expected) {
        for (Category e : expected) {
            if (e == token.category) {
                Token ret = token;
                nextToken();
                return ret;
            }
        }
        error(expected);
        return token;
    }

    /**
     * Returns true if the current token is equals to any of the expected ones.
     */
    private boolean accept(Category... expected) {
        for (Category e : expected) {
            if (e == token.category)
            return true;
        }
        return false;
    }


    /**
     * program ::= (include)* (structdecl | vardecl | fundecl | fundef)* EOF
     */

    private Program parseProgram() {
        parseIncludes();

        List<Decl> decls = new ArrayList<>();

        while (accept(TYPE_FIRST_SET)) {
            if (token.category == Category.STRUCT &&
            lookAhead(1).category == Category.IDENTIFIER &&
            lookAhead(2).category == Category.LBRA) {
                decls.add(parseStructDecl());
            } else if (token.category == Category.CLASS &&
            lookAhead(1).category == Category.IDENTIFIER &&
            (lookAhead(2).category == Category.EXTENDS || lookAhead(2).category == Category.LBRA)) {
                decls.add(parseClassDecl());
            } else {
                Type type = parseType();
                Token id = expect(Category.IDENTIFIER);
                if (accept(Category.LPAR)) {
                    nextToken();
                    List<VarDecl> params = parseParams();
                    expect(Category.RPAR);
                    if (accept(Category.SC)) {
                        nextToken();
                        decls.add(new FunDecl(type, id.data, params));
                    } else if (accept(Category.LBRA)) {
                        Block block = parseBlock();
                        decls.add(new FunDef(type, id.data, params, block));
                    } else {
                        error(Category.SC, Category.LBRA);
                    }
                } else {
                    decls.add(parseVariableDeclHelper(type, id.data, true));
                }
            }
        }
        expect(Category.EOF);
        return new Program(decls);
    }

    /**
     * include ::= "#include" STRING_LITERAL
     */
    private void parseIncludes() {
        while (accept(Category.INCLUDE)) {
            nextToken();
            expect(Category.STRING_LITERAL);
        }
    }

    /**
     * type ::= ("int" | "char" | "void" | structtype /classtype) ("*")*
     */
    private Type parseType() {
        if (!accept(TYPE_FIRST_SET)) {
            error(TYPE_FIRST_SET);
            return BaseType.NONE;
        }

        Type base;
        if (accept(Category.STRUCT)) {
            nextToken();
            Token id = expect(Category.IDENTIFIER);
            base = new StructType(id.data);
        } else if (accept(Category.CLASS)){
            nextToken();
            Token id = expect(Category.IDENTIFIER);
            base = new ClassType(id.data);
        } else {
            switch (token.category) {
                case INT -> base = BaseType.INT;
                case CHAR -> base = BaseType.CHAR;
                default -> base = BaseType.VOID;
            }
            nextToken();
        }

        while (accept(Category.ASTERISK)) {
            nextToken();
            base = new PointerType(base); // right to left associative
        }

        return base;
    }

    /**
     * structdecl ::= structtype "{" (vardecl)+ "}" ";"
     */
    private StructTypeDecl parseStructDecl() { 
        expect(Category.STRUCT);
        Token id = expect(Category.IDENTIFIER);
        StructType type = new StructType(id.data);
        expect(Category.LBRA);
        List<VarDecl> fields = new ArrayList<>();
        do {
            fields.add(parseVarDecl());
        } while (accept(TYPE_FIRST_SET));
        expect(Category.RBRA);
        expect(Category.SC);
        return new StructTypeDecl(type, fields);
    }


    /**
     * vardecl ::= type IDENT ("[" INT_LITERAL "]")* ";" left to right associative
     */
    private VarDecl parseVarDecl() {
        Type type = parseType();
        Token id = expect(Category.IDENTIFIER);
        return parseVariableDeclHelper(type, id.data, true);
    }

    private VarDecl parseVariableDeclHelper(Type type, String name, boolean expectSemicolon) {
        Deque<Integer> arraySizes = new ArrayDeque<>();

        while (accept(Category.LSBR)) {
            nextToken();
            Token arraySize = expect(Category.INT_LITERAL);
            expect(Category.RSBR);
            arraySizes.push(Integer.parseInt(arraySize.data));
        }

        while (!arraySizes.isEmpty()) {
            type = new ArrayType(type, arraySizes.pop());
        }

        if (expectSemicolon) {
            expect(Category.SC);
        }

        return new VarDecl(type, name);
    }

    /*
     * classdecl ::= classtype ["extends" IDENT] "{" (vardecl)* (fundef)* }
    */
    private Decl parseClassDecl() {
        expect(Category.CLASS);
        Token classId = expect(Category.IDENTIFIER);
        ClassType classType = new ClassType(classId.data);
        ClassType extendsType = null;
        if (accept(Category.EXTENDS)) {
            nextToken();
            Token extendsId = expect(Category.IDENTIFIER);
            extendsType = new ClassType(extendsId.data);
        }
        expect(Category.LBRA);
        List<VarDecl> fields = new ArrayList<>();
        List<FunDef> functions = new ArrayList<>();

        boolean parsingFields = true;

        while (accept(TYPE_FIRST_SET)) {
            Type t = parseType();
            Token id = expect(Category.IDENTIFIER);
            if (parsingFields && (accept(Category.LSBR) || accept(Category.SC))) {
                fields.add(parseVariableDeclHelper(t, id.data, true));
            } else {
                parsingFields = false;
                functions.add(parseFundef(t, id.data));
            }

        }

        expect(Category.RBRA);

        return new ClassDecl(classType, extendsType, fields, functions);
    }

    private FunDef parseFundef(Type type, String name) {
        expect(Category.LPAR);
        List<VarDecl> params = parseParams();
        expect(Category.RPAR);
        Block block = parseBlock();
        return new FunDef(type, name, params, block);
    }



    // vardecl    ::= type IDENT ("[" INT_LITERAL "]")* ";" # variable declaration, (e.g. int a;), or multi-dimensional array declaration, (e.g. int a[2][5];)
    // fundef    ::= type IDENT "(" params ")" block       # function definition

    /**
     * params ::= [ type IDENT ("[" INT_LITERAL "]")* ("," type IDENT ("[" INT_LITERAL "]")*)* ]
     */
    private List<VarDecl> parseParams() {
        List<VarDecl> params = new ArrayList<>();

        if (accept(TYPE_FIRST_SET)) {
            Type t1 = parseType();
            Token id1 = expect(Category.IDENTIFIER);

            params.add(parseVariableDeclHelper(t1, id1.data, false));
            while (accept(Category.COMMA)) {
                nextToken();
                Type t2 = parseType();
                Token id2 = expect(Category.IDENTIFIER);
                params.add(parseVariableDeclHelper(t2, id2.data, false));
            }
        }

        return params;
    }

    /**
     * block ::= "{" (vardecl)* (stmt)* "}"
     */
    private Block parseBlock() {
        expect(Category.LBRA);
        List<VarDecl> vds = new ArrayList<>();
        List<Stmt> stmts = new ArrayList<>();
        while (accept(TYPE_FIRST_SET)) {
            vds.add(parseVarDecl());
        }
        while (accept(STMT_FIRST_SET)) {
            stmts.add(parseStmt());
        }
        expect(Category.RBRA);
        return new Block(vds, stmts);
    }

    /**
     * stmt ::= block
     * | "while" "(" exp ")" stmt
     * | "if" "(" exp ")" stmt ["else" stmt]
     * | "return" [exp] ";"
     * | exp ";"
     * | "continue" ";"
     * | "break" ";"
     */
    private Stmt parseStmt() {
        if (accept(Category.LBRA)) {
            return parseBlock();
        } else if (accept(Category.WHILE)) {
            nextToken();
            expect(Category.LPAR);
            Expr condition = parseExp();
            expect(Category.RPAR);
            Stmt stmt = parseStmt();
            return new While(condition, stmt);
        } else if (accept(Category.IF)) {
            nextToken();
            expect(Category.LPAR);
            Expr condition = parseExp();
            expect(Category.RPAR);
            Stmt ifStmt = parseStmt();
            Stmt elseStmt = null;
            if (accept(Category.ELSE)) {
                nextToken();
                elseStmt = parseStmt();
            }
            return new If(condition, ifStmt, elseStmt);
        } else if (accept(Category.RETURN)) {
            nextToken();
            Expr returnExpr = null;
            if (!accept(Category.SC)) {
                returnExpr = parseExp();
            }
            expect(Category.SC);
            return new Return(returnExpr);
        } else if (accept(Category.CONTINUE)) {
            nextToken();
            expect(Category.SC);
            return new Continue();
        } else if (accept(Category.BREAK)) {
            nextToken();
            expect(Category.SC);
            return new Break();
        } else if (accept(EXP_FIRST_SET)) {
            Expr expr = parseExp();
            expect(Category.SC);
            return new ExprStmt(expr);
        }
        error(STMT_FIRST_SET);
        return new Continue();
    }

    private Expr parseExp() {
        return parseAssign();
    }

    private Expr parseAssign() {
        Expr lhs = parseLogor();
        if (accept(Category.ASSIGN)) {
            nextToken();
            Expr rhs = parseAssign();
            return new Assign(lhs, rhs);
        }
        return lhs;
    }

    private Expr parseLogor() {
        Expr lhs = parseLogand();
        while (accept(Category.LOGOR)) {
            nextToken();
            Expr rhs = parseLogand();
            lhs = new BinOp(lhs, Op.OR, rhs);
        }
        return lhs;
    }

    private Expr parseLogand() {
        Expr lhs = parseEquality();
        while (accept(Category.LOGAND)) {
            nextToken();
            Expr rhs = parseEquality();
            lhs = new BinOp(lhs, Op.AND, rhs);
        }
        return lhs;
    }

    private Expr parseEquality() {
        Expr lhs = parseComparison();
        while (accept(Category.EQ, Category.NE)) {
            Op op = token.category == Category.EQ ? Op.EQ : Op.NE;
            nextToken();
            Expr rhs = parseComparison();
            lhs = new BinOp(lhs, op, rhs);
        }
        return lhs;
    }

    private Expr parseComparison() {
        Expr lhs = parseAddSub();
        while (accept(Category.LT, Category.LE, Category.GT, Category.GE)) {
            Op op = switch (token.category) {
                case LT -> Op.LT;
                case LE -> Op.LE;
                case GT -> Op.GT;
                default -> Op.GE;
            };
            nextToken();
            Expr rhs = parseAddSub();
            lhs = new BinOp(lhs, op, rhs);
        }
        return lhs;
    }

    private Expr parseAddSub() {
        Expr lhs = parseMulDivRem();
        while (accept(Category.PLUS, Category.MINUS)) {
            Op op = token.category == Category.PLUS ? Op.ADD: Op.SUB;
            nextToken();
            Expr rhs = parseMulDivRem();
            lhs = new BinOp(lhs, op, rhs);
        }
        return lhs;
    }

    private Expr parseMulDivRem() {
        Expr lhs = parseUnary();
        while (accept(Category.ASTERISK, Category.DIV, Category.REM)) {
            Op op = switch (token.category) {
                case ASTERISK -> Op.MUL;
                case DIV -> Op.DIV;
                default -> Op.MOD;
            };
            nextToken();
            Expr rhs = parseUnary();
            lhs = new BinOp(lhs, op, rhs);
        }
        return lhs;
    }

    private Expr parseUnary() {
        if (accept(Category.NEW)) {
            nextToken();
            expect(Category.CLASS);
            Token id = expect(Category.IDENTIFIER);
            expect(Category.LPAR);
            expect(Category.RPAR);
            return new NewInstance(new ClassType(id.data));
        }

        if (accept(Category.PLUS, Category.MINUS, Category.ASTERISK, Category.AND)) {
            Token t = token;
            nextToken();
            Expr expr = parseUnary();
            return switch (t.category) {
                case PLUS -> new BinOp(new IntLiteral(0), Op.ADD, expr);
                case MINUS -> new BinOp(new IntLiteral(0), Op.SUB, expr);
                case ASTERISK -> new ValueAtExpr(expr);
                default -> new AddressOfExpr(expr);
            };
        }
        if (accept(Category.LPAR)) {
            nextToken();
            if (accept(TYPE_FIRST_SET)) {
                Type type = parseType();
                expect(Category.RPAR);
                Expr expr = parseUnary();
                return new TypecastExpr(type, expr);
            } else {
                Expr expr = parseExp();
                expect(Category.RPAR);
                return parsePrimaryPrime(expr);
            }
        }
        return parsePrimary();
    }

    private Expr parsePrimary() {
        Expr primary;
        if (accept(Category.IDENTIFIER)) {
            Token t = expect(Category.IDENTIFIER);
            if (accept(Category.LPAR)) { // function call
                nextToken();
                List<Expr> args = new ArrayList<>();
                if (!accept(Category.RPAR)) {
                    args.add(parseExp());
                    while (accept(Category.COMMA)) {
                        nextToken();
                        args.add(parseExp());
                    }
                }
                expect(Category.RPAR);
                primary = new FunCallExpr(t.data, args);
            } else {
                primary = new VarExpr(t.data);
            }
        } else if (accept(Category.INT_LITERAL)) {
            Token t = expect(Category.INT_LITERAL);
            primary = new IntLiteral(Integer.parseInt(t.data));
        } else if (accept(Category.CHAR_LITERAL)) {
            Token t = expect(Category.CHAR_LITERAL);
            primary = new ChrLiteral(t.data.charAt(0));
        } else if (accept(Category.STRING_LITERAL)) {
            Token t = expect(Category.STRING_LITERAL);
            primary = new StrLiteral(t.data);
        } else if (accept(Category.SIZEOF)) {
            nextToken();
            expect(Category.LPAR);
            Type type = parseType();
            expect(Category.RPAR);
            primary = new SizeOfExpr(type);
        } else {
            error(EXP_FIRST_SET);
            return new IntLiteral(0);
        }
        return parsePrimaryPrime(primary);
    }

    // ("[" exp "]" | "." IDENT | "." IDENT "(" [ exp ("," exp)* ] ")")*
    private Expr parsePrimaryPrime(Expr expr) {
        while (accept(Category.LSBR, Category.DOT)) {
            if (accept(Category.LSBR)) {
                nextToken();
                Expr index = parseExp();
                expect(Category.RSBR);
                expr = new ArrayAccessExpr(expr, index);
            } else {
                nextToken();
                Token id = expect(Category.IDENTIFIER);
                if (accept(Category.LPAR)) {
                    nextToken();
                    
                    String funcallName = id.data;
                    List<Expr> args = new ArrayList<>();
                    if (!accept(Category.RPAR)) {
                        args.add(parseExp());
                        while (accept(Category.COMMA)) {
                            nextToken();
                            args.add(parseExp());
                        }
                    }
                    expect(Category.RPAR);
                    expr = new InstanceFunCallExpr(expr, new FunCallExpr(funcallName, args));
                } else {
                    expr = new FieldAccessExpr(expr, id.data);
                }
            }
        }
        return expr;
    }



}
