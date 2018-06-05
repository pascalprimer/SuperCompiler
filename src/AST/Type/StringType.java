package AST.Type;

import AST.Symbol.Type;
import IR.IRTranslator;

public class StringType extends Type {
	private static final StringType instance = new StringType();

	public StringType() {
		++IRTranslator.memNumber;
	}

	@Override
	public boolean compatibleWith(Type obj) {
		return this == obj;
	}

	public static StringType getInstance() {
		return instance;
	}

	@Override
	public String toString() {
		return "string";
	}
}
