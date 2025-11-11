package sem;

import java.util.HashMap;
import java.util.Map;

public class Scope {
	private final Scope outer;
	private final Map<String, Symbol> symbolTable = new HashMap<>();

	public Scope(Scope outer) {
		this.outer = outer;
	}

	public Scope() { this(null); }

	public Symbol lookup(String name) {
		Symbol s = lookupCurrent(name);
		if (s != null) {
			return s;
		}
		if (outer == null) {
			return null;
		}
		return outer.lookup(name);
	}

	public Symbol lookupCurrent(String name) {
		return symbolTable.get(name);
	}

	public void put(Symbol sym) {
		symbolTable.put(sym.name, sym);
	}
}
