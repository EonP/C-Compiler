package ast;

import java.util.ArrayList;
import java.util.List;

public final class ClassType implements Type {
    public String name;
    
    public ClassType(String name) {
        this.name = name;
    }

    @Override
    public List<ASTNode> children() {
        return new ArrayList<>();
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof ClassType that)
                && (this.name.equals(that.name));
    }

    @Override
    public String toString() {
       return "class " + name;
    }


    @Override
    public int size() {
        return Type.referenceSize();    
    }

    @Override
    public int alignment() {
        return size();    
    }

}
