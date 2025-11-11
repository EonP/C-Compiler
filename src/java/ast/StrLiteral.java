package ast;

import gen.asm.Label;

import java.util.ArrayList;
import java.util.List;

public final class StrLiteral extends Expr {

    public String str;
    public Label label;

    public StrLiteral(String str) {
        this.str = str;
    }

    @Override
    public List<ASTNode> children() {
        return new ArrayList<>();
    }
}
