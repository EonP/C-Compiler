package ast;

import java.util.ArrayList;
import java.util.List;

public final class ChrLiteral extends Expr {

    public char c;

    public ChrLiteral(char c) {
        this.c = c;
    }

    @Override
    public List<ASTNode> children() {
        return new ArrayList<>();
    }
}
