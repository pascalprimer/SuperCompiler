package AST.Expression.UnaryExpression;

import AST.Expression.Expression;
import AST.Symbol.Type;

public abstract class UnaryExpression extends Expression {

	public Expression expression;

	public UnaryExpression(String oper, boolean leftValue, Type type, Expression exp) {
		super(oper, leftValue, type);
		expression = exp;
	}

	@Override
	public boolean getUseful() {
		return true;
	}

	@Override
	public void dfsUseful(boolean useful) {
		modifyTag = false;
		expression.dfsUseful(true);
	}
}
