package AST.Constant;

import AST.Expression.Expression;
import AST.Symbol.Type;

public abstract class Constant extends Expression {

	public Constant(Type type) {
		super("const", false, type);
	}

	public abstract boolean constantCompatibleWith(Constant obj);
}
