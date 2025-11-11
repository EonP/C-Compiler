package ast;

public sealed interface Type extends ASTNode
        permits BaseType, PointerType, StructType, ArrayType, ClassType {

    @Override
    abstract boolean equals(Object obj);

    @Override
    abstract String toString();

    abstract int size();

    abstract int alignment();

    static int referenceSize() {
        return 4;
    }
}
