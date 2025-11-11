import java.util.*;

public final class MiniCGenerator {
    private static final Random random = new Random();
    private static final int MAX_RECURSION_DEPTH = 20;
    private static final int MAX_NUM_INCLUDES = 10;
    private static final int MAX_NUM_DECLARATIONS = 10;
    private static final int MAX_STRUCT_FIELDS = 10;
    private static final int MAX_ARRAY_DIMENSIONS = 1;
    private static final int MAX_NUM_PARAMS = 10;
    private static final int MAX_NUM_ASTERISK = 10;
    private static final int MAX_NUM_VAR_DECL = 20;
    private static final int MAX_NUM_STMT = 10;
    private static final String[] BIN_OPS = {
            ">", "<", ">=", "<=", "!=", "==", "+", "-", "/", "*", "%", "||", "&&"
    };
    private static final String[] BASE_TYPES = {"int", "char", "void"};

    public static String generateProgram() {
        return generateIncludes() + generateDeclarations();
    }

    private static String generateIncludes() {
        StringBuilder sb = new StringBuilder();
        int numIncludes = random.nextInt(MAX_NUM_INCLUDES);
        for (int i = 0; i < numIncludes; ++i) {
            sb.append("#include ").append(generateStringLiteral()).append('\n');
        }
        return sb.toString();
    }

    private static String generateDeclarations() {
        StringBuilder declarations = new StringBuilder();
        int numDeclarations = random.nextInt(MAX_NUM_DECLARATIONS);
        for (int i = 0; i < numDeclarations; ++i) {
            int choice = random.nextInt(5);

            switch (choice) {
                case 0: {
                    declarations.append(generateStructDecl());
                    break;
                }
                case 1: {
                    declarations.append(generateVarDecl());
                    break;
                }
                case 2: {
                    declarations.append(generateFunDecl());
                    break;
                }
                case 3: {
                    declarations.append(generateClassDecl());
                    break;
                }
                default: {
                    declarations.append(generateFunDef());
                    break;
                }
            }
            declarations.append('\n');
        }
        return declarations.toString();
    }

    private static String generateClassDecl() {
        String className = generateIdentifier();
        StringBuilder body = new StringBuilder();
        body.append("{\n");

        int numFields = random.nextInt(MAX_STRUCT_FIELDS);
        for (int i = 0; i < numFields; ++i) {
            body.append("    ").append(generateVarDecl()).append("\n");
        }

        // Add method declarations
        int numMethods = random.nextInt(3);
        for (int i = 0; i < numMethods; ++i) {
            body.append("    ").append(generateFunDef()).append("\n");
        }

        body.append("}\n");
        if (random.nextBoolean()) {
            return "class " + className + " " + body;
        } else {
            return "class " + className + " extends aClass" + body;
        }

    }

    private static String generateStructDecl() {
        String ident = generateIdentifier();
        StringBuilder structFields = new StringBuilder();
        int numFields = random.nextInt(MAX_STRUCT_FIELDS) + 1;
        for (int i = 0; i < numFields; ++i) {
            structFields.append("    ").append(generateVarDecl()).append('\n');
        }
        return "struct " + ident + " {\n" + structFields + "};\n";
    }

    private static String generateVarDecl() {
        String type = generateType();
        String ident = generateIdentifier();
        StringBuilder arrayPart = new StringBuilder();
        int dimensions = random.nextInt(MAX_ARRAY_DIMENSIONS);
        for (int i = 0; i < dimensions; ++i) {
            arrayPart.append("[").append(generateIntLiteral()).append("]");
        }
        return type + " " + ident + arrayPart + ";";
    }

    private static String generateFunDecl() {
        String type = generateType();
        String ident = generateIdentifier();
        return type + " " + ident + "(" + generateParams() + ");";
    }

    private static String generateFunDef() {
        String type = generateType();
        String ident = generateIdentifier();
        String params = generateParams();
        String block = generateBlock(MAX_RECURSION_DEPTH - 1);
        return type + " " + ident + "(" + params + ") " + block;
    }

    private static String generateParams() {
        if (random.nextBoolean()) {
            return "";
        }

        int numParams = random.nextInt(MAX_NUM_PARAMS) + 1;
        StringJoiner params = new StringJoiner(", ");
        for (int i = 0; i < numParams; ++i) {
            String type = generateType();
            String ident = generateIdentifier();
            StringBuilder arrayPart = new StringBuilder();
            int dimensions = random.nextInt(MAX_ARRAY_DIMENSIONS);
            for (int j = 0; j < dimensions; ++j) {
                arrayPart.append("[").append(generateIntLiteral()).append("]");
            }
            params.add(type + " " + ident  + arrayPart);
        }
        return params.toString();
    }

    private static String generateBlock(int depth) {
        if (depth <= 0) {
            return "{ }\n";
        }
        StringBuilder block = new StringBuilder();
        block.append("{\n");
        int numVarDecl = random.nextInt(MAX_NUM_VAR_DECL);
        for (int i = 0; i < numVarDecl; ++i) {
            block.append("    ").append(generateVarDecl()).append("\n");
        }

        int numStmts = random.nextInt(MAX_NUM_STMT);
        for (int i = 0; i < numStmts; ++i) {
            block.append("    ").append(generateStmt(depth));
        }
        block.append("}\n");
        return block.toString();
    }

    private static String generateStmt(int depth) {
        if (depth <= 0) {
            return "return;\n";
        }
        int choice = random.nextInt(7);
        return switch (choice) {
            case 0 -> generateBlock(depth);
            case 1 -> "while (" + generateExp(depth) + ") " + generateStmt(depth - 1);
            case 2 -> "if (" + generateExp(depth) + ") " + generateStmt(depth - 1) +
                    (random.nextBoolean() ? " else " + generateStmt(depth - 1) : "");
            case 3 -> "return" + (random.nextBoolean() ? " " + generateExp(depth) : "") + ";\n";
            case 4 -> generateExp(depth) + ";\n";  // Expression statement (function call, assignment)
            case 5 -> "continue;\n";
            default -> "break;\n";
        };
    }

    private static String generateExp(int depth) {
        if (depth <= 0) {
            return generateCharLiteral();
        }
        int choice = random.nextInt(14);
        return switch (choice) {
            case 0 -> "(" + generateExp(depth - 1) + ")";
            case 1 -> generateExp(depth - 1) + " = " + generateExp(depth - 1);
            case 2 -> random.nextBoolean() ? generateIdentifier() : generateIntLiteral();
            case 3 -> random.nextBoolean() ? "+ " + generateExp(depth - 1) : "- " + generateExp(depth - 1);
            case 4 -> generateCharLiteral();
            case 5 -> generateStringLiteral();
            case 6 -> generateExp(depth - 1) + " " + generateBinOp() + " " + generateExp(depth - 1);
            case 7 -> generateExp(depth - 1) + "[" + generateExp(depth - 1) + "]";
            case 8 -> {
                if (random.nextBoolean()) {
                    yield generateExp(depth - 1) + "." + generateFunCall(depth - 1);
                } else {
                    yield generateExp(depth - 1) + "." + generateIdentifier(); // field access
                }
            }            
            case 9 -> "*" + generateExp(depth - 1);
            case 10 -> "(" + "&" + generateExp(depth - 1) + ")";
            case 11 -> generateFunCall(depth - 1);
            case 12 -> "(" + generateType() + ") " + generateExp(depth - 1);
            case 13 -> "(new class " + generateIdentifier() + "())";
            default -> "sizeof" + "(" + generateType() + ")";
        };
    }

    private static String generateFunCall(int depth) {
        if (depth <= 0) {
            return generateIdentifier() + "()";
        }
        String ident = generateIdentifier();
        if (random.nextBoolean()) {
            return ident + "()";
        }
        StringJoiner args = new StringJoiner(", ");
        int num_args = random.nextInt(MAX_NUM_PARAMS) + 1;
        for (int i = 0; i < num_args; ++i) {
            args.add(generateExp(depth));
        }
        return ident + "(" + args + ")";
    }

    private static String generateIdentifier() {
        return "var" + (random.nextInt(1000));
    }

    private static String generateIntLiteral() {
        return Integer.toString(random.nextInt(100));
    }

    private static String generateStringLiteral() {
        return "\"string_lit\"";
    }

    private static String generateCharLiteral() {
        return "'c'";
    }

    
    private static String generateType() {
        if (random.nextInt(3) == 0) {
            return "struct " + generateIdentifier();  // Keep struct types too
        } else if (random.nextInt(3) == 0) {
            return "class " + generateIdentifier(); // Class name (non-struct)
        } else {
            return BASE_TYPES[random.nextInt(BASE_TYPES.length)];
        }
    }

    private static String generateBinOp() {
        return BIN_OPS[random.nextInt(BIN_OPS.length)];
    }

    public static void main(String[] args) {
        System.out.println(generateProgram());
    }
}
