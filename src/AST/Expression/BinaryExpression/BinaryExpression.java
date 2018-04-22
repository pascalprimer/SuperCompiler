package AST.Expression.BinaryExpression;

import AST.Expression.Expression;
import AST.Symbol.Type;

public abstract class BinaryExpression extends Expression {
	public Expression leftExpression, rightExpression;

	public BinaryExpression(String oper, Type type,
	                        Expression leftExp, Expression rightExp) {
		super(oper, false, type);
		leftExpression = leftExp;
		rightExpression = rightExp;
	}

	public void setType(Type type) {
		returnType = type;
	}
}
