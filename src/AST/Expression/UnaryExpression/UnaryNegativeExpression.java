package AST.Expression.UnaryExpression;

import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.IntType;
import Utility.CompilerError;

public class UnaryNegativeExpression extends UnaryExpression {

	private UnaryNegativeExpression(Expression exp) {
		super("-", false, IntType.getInstance(), exp);
	}

	public static Expression getExpression(Expression exp) {
		if (exp.returnType instanceof IntType) {
			if (exp instanceof IntConstant) {
				return new IntConstant(-((IntConstant) exp).getValue());
			}
			return new UnaryNegativeExpression(exp);
		}
		throw new CompilerError("Not integer");
	}

}