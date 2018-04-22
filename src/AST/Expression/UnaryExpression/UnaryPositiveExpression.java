package AST.Expression.UnaryExpression;

import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.IntType;
import Utility.CompilerError;

public class UnaryPositiveExpression extends UnaryExpression {

	private UnaryPositiveExpression(Expression exp) {
		super("+", false, IntType.getInstance(), exp);
	}

	public static Expression getExpression(Expression exp) {
		if (exp.returnType instanceof IntType) {
			return exp;
		}
		throw new CompilerError("Not integer");
	}

}