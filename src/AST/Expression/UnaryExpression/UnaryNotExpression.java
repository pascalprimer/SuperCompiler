package AST.Expression.UnaryExpression;

import AST.Constant.BoolConstant;
import AST.Expression.Expression;
import AST.Type.BoolType;
import AST.Type.IntType;
import Utility.CompilerError;

public class UnaryNotExpression extends UnaryExpression {

	private UnaryNotExpression(Expression exp) {
		super("!", false, BoolType.getInstance(), exp);
	}

	public static Expression getExpression(Expression exp) {
		if (exp.returnType instanceof BoolType) {
			if (exp instanceof BoolConstant) {
				return new BoolConstant(!((BoolConstant) exp).getValue());
			}
			return new UnaryNotExpression(exp);
		}
		throw new CompilerError("Not boolean");
	}

}
