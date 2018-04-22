package AST.Expression.UnaryExpression;

import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.IntType;
import Utility.CompilerError;

//++A

public class UnaryAddExpression extends UnaryExpression {

	private UnaryAddExpression(Expression exp) {
		super("++", true, IntType.getInstance(), exp);
	}

	static public Expression getExpression(Expression exp) {
		if (exp.returnType instanceof IntType && exp.getLeftValue() == true) {
			return new UnaryAddExpression(exp);
		}
		throw new CompilerError("Not left value or integer");
	}
}
