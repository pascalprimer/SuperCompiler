package AST.Type;

import AST.Symbol.Type;

public class BoolType extends Type {
	private static final BoolType instance = new BoolType();

	public BoolType() {}

	@Override
	public boolean compatibleWith(Type obj) {
		return this == obj;
	}

	public static BoolType getInstance() {
		return instance;
	}

	@Override
	public String toString() {
		return "bool";
	}
}
