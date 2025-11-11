package ast;

import java.util.ArrayList;
import java.util.List;

public final class StructType implements Type {

    public String name;
    public StructTypeDecl std; // filled in by type analyser

    public StructType(String name) {
        this.name = name;
    }

    @Override
    public List<ASTNode> children() {
        return new ArrayList<>();
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof StructType that)
                && (this.name.equals(that.name));
    }

    @Override
    public String toString() {
        return "struct " + name;
    }

    @Override
    public int size() {
        if (std == null) {
            throw new IllegalStateException("Error should be caught by type analyser");
        }
        int totalSize = 0;
        int maxAlignment = 0;
        for (VarDecl field : std.fields) {
            int fieldSize = field.type.size();
            int fieldAlignment = field.type.alignment();

            // Check if padding is needed
            if (totalSize % fieldAlignment != 0) {
                totalSize += fieldAlignment - (totalSize % fieldAlignment);
            }

            // Add the field
            totalSize += fieldSize;
            maxAlignment = Math.max(maxAlignment, fieldAlignment);
        }

        // Pad to the largest field alignment
        if (totalSize % maxAlignment != 0) {
            totalSize += maxAlignment - (totalSize % maxAlignment);
        }

        return totalSize;
    }


    @Override
    public int alignment() {
        if (std == null) {
            throw new IllegalStateException("Error should be caught by type analyser");
        }
        int maxAlignment = 0;
        for (VarDecl field : std.fields) {
            maxAlignment = Math.max(maxAlignment, field.type.alignment());
        }
        return maxAlignment;
    }


}
