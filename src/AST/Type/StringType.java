package AST.Type;

import AST.Symbol.Type;

public class StringType extends Type {
	private static final StringType instance = new StringType();

	public StringType() {
	}

	@Override
	public boolean compatibleWith(Type obj) {
		return this == obj;
	}

	public static StringType getInstance() {
		return instance;
	}
}
