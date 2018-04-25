package AST.Expression.UnaryExpression;

import AST.Expression.ConstantExpression.IntConstant;
import AST.Expression.Expression;
import AST.Type.IntType;
import Utility.CompilerError;

public class UnaryReverseExpression extends UnaryExpression {

	private UnaryReverseExpression(Expression exp) {
		super("~", false, IntType.getInstance(), exp);
	}

	public static Expression getExpression(Expression exp) {
		if (exp.returnType instanceof IntType) {
			if (exp instanceof IntConstant) {
				return new IntConstant(~((IntConstant) exp).getValue());
			}
			return new UnaryReverseExpression(exp);
		}
		throw new CompilerError("Not integer");
	}

}
