package AST.Expression.PostfixExpression;

import AST.Expression.Expression;
import AST.Type.IntType;
import Utility.CompilerError;

//A++

public class PostfixAddExpression extends Expression {

	private Expression expression;

	private PostfixAddExpression(Expression exp) {
		super("++", false, IntType.getInstance());
	}

	public static Expression getExpression(Expression exp) {
		if (exp.returnType instanceof IntType && exp.getLeftValue()) {
			return new PostfixAddExpression(exp);
		}
		throw new CompilerError("Not left value or integer");
	}
}
