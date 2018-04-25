package AST.Type;

import AST.Symbol.Type;

public class NullType extends Type {
	private static final NullType instance = new NullType();

	public NullType() {
	}

	@Override
	public boolean compatibleWith(Type obj) {
		return this == obj;
	}

	public static NullType getInstance() {
		return instance;
	}

	@Override
	public String toString() {
		return "null";
	}
}
