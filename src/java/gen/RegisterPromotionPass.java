package gen;

import ast.*;
import gen.asm.Register;

public final class RegisterPromotionPass {

    public void visit(ASTNode n) {
        switch (n) {
            case FunDef fd -> {
                fd.block.vds.forEach(vd -> {
                    if (!(vd.type instanceof StructType || vd.type instanceof ArrayType)) {
                        vd.virtualReg = Register.Virtual.create();
                    }
                });

                fd.block.stmts.forEach(this::visit);
            }

            case AddressOfExpr aoe -> {
                if (aoe.expr instanceof VarExpr varExpr) {
                    if (varExpr.vd.hasVirtualReg()) {
                        varExpr.vd.virtualReg = null;
                    }
                }
            }

            default -> n.children().forEach(this::visit);
        }
    }

}
