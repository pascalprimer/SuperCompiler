package AST.Type;

import AST.Symbol.Type;

public class IntType extends Type {
	private static final IntType instance = new IntType();

	public IntType() {
	}

	@Override
	public boolean compatibleWith(Type obj) {
		return this == obj;
	}

	public static IntType getInstance() {
		return instance;
	}

	@Override
	public String toString() {
		return "int";
	}
}
