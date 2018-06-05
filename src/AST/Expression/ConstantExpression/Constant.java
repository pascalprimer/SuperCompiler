package AST.Expression.ConstantExpression;

import AST.Expression.Expression;
import AST.Symbol.Type;
import Utility.RuntimeError;

public abstract class Constant extends Expression {

	public Constant(Type type) {
		super("const", false, type);
	}

	public abstract boolean constantCompatibleWith(Constant obj);

	@Override
	public boolean getUseful() {
		throw new RuntimeError("constant Expression getUseful");
	}

	@Override
	public void dfsUseful(boolean useful) {

	}
}
