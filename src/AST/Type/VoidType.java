package AST.Type;

import AST.Symbol.Type;

public class VoidType extends Type {
	private static final VoidType instance = new VoidType();

	public VoidType() {
	}

	@Override
	public boolean compatibleWith(Type obj) {
		return false;
	}

	public static VoidType getInstance() {
		return instance;
	}
}
