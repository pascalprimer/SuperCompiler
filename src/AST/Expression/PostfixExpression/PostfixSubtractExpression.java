package AST.Expression.PostfixExpression;

import AST.Expression.Expression;
import AST.Type.IntType;
import Utility.CompilerError;

public class PostfixSubtractExpression extends Expression {

	private Expression expression;

	private PostfixSubtractExpression(Expression exp) {
		super("--", false, IntType.getInstance());
	}

	public static Expression getExpression(Expression exp) {
		if (exp.returnType instanceof IntType && exp.getLeftValue()) {
			return new PostfixSubtractExpression(exp);
		}
		throw new CompilerError("Not left value or integer");
	}

}
