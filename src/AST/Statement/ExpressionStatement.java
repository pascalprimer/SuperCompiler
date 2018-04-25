package AST.Statement;

import AST.Expression.Expression;
import AST.Symbol.Scope;

public class ExpressionStatement extends Statement {

	private Expression expression;

	public ExpressionStatement(Expression expression) {
		this.expression = expression;
	}

	public void setExpression(Expression expression) {
		this.expression = expression;
	}
}
