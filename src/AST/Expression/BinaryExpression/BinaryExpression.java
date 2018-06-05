package AST.Expression.BinaryExpression;

import AST.Expression.Expression;
import AST.Symbol.Type;
import Utility.RuntimeError;

public abstract class BinaryExpression extends Expression {
	public Expression leftExpression, rightExpression;

	public BinaryExpression(String oper, Type type,
	                        Expression leftExp, Expression rightExp) {
		super(oper, false, type);
		leftExpression = leftExp;
		rightExpression = rightExp;
	}

	@Override
	public boolean getUseful() {
		throw new RuntimeError("binary Expression getUseful");
	}

	@Override
	public void dfsUseful(boolean useful) {
		leftExpression.dfsUseful(true);
		rightExpression.dfsUseful(true);
	}

	public void setType(Type type) {
		returnType = type;
	}
}
