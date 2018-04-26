package AST.Type;

import AST.Symbol.Type;

public class VoidType extends Type {
	private static final VoidType instance = new VoidType();

	public VoidType() {
	}

	@Override
	public boolean compatibleWith(Type obj) {
		return obj == instance;
	}

	public static VoidType getInstance() {
		return instance;
	}

	@Override
	public String toString() {
		return "void";
	}
}
