package AST.Expression.UnaryExpression;

import AST.Expression.Expression;
import AST.Type.IntType;
import Utility.CompilerError;

public class UnarySubtractExpression extends UnaryExpression {

	private UnarySubtractExpression(Expression exp) {
		super("--", true, IntType.getInstance(), exp);
	}

	public static Expression getExpression(Expression exp) {
		if (exp.returnType instanceof IntType && exp.getLeftValue() == true) {
			return new UnarySubtractExpression(exp);
		}
		throw new CompilerError("Not left value or integer");
	}
}
