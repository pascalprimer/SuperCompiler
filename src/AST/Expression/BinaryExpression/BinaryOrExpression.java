package AST.Expression.BinaryExpression;

import AST.Expression.ConstantExpression.IntConstant;
import AST.Expression.Expression;
import AST.Symbol.Type;
import AST.Type.IntType;
import Utility.CompilerError;

public class BinaryOrExpression extends BinaryExpression {

	private BinaryOrExpression(Type type, Expression leftExp, Expression rightExp) {
		super("|", type, leftExp, rightExp);
	}

	public static Expression getExpression(Expression leftExp, Expression rightExp) {
		if (leftExp.returnType instanceof IntType && rightExp.returnType instanceof IntType) {
			if (leftExp instanceof IntConstant && rightExp instanceof IntConstant) {
				return new IntConstant(((IntConstant) leftExp).getValue() |
						((IntConstant) rightExp).getValue());
			}
			return new BinaryOrExpression(IntType.getInstance(), leftExp, rightExp);
		}
		throw new CompilerError("Expressions cannot be |");
	}

}
