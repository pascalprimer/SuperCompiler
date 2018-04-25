package AST.Expression.BinaryExpression;

import AST.Expression.ConstantExpression.BoolConstant;
import AST.Expression.Expression;
import AST.Symbol.Type;
import AST.Type.BoolType;
import Utility.CompilerError;

public class BinaryAndAndExpression extends BinaryExpression {

	private BinaryAndAndExpression(Type type, Expression leftExp, Expression rightExp) {
		super("&&", type, leftExp, rightExp);
	}

	public static Expression getExpression(Expression leftExp, Expression rightExp) {
		if (leftExp.returnType instanceof BoolType && rightExp.returnType instanceof BoolType) {
			if (leftExp instanceof BoolConstant && rightExp instanceof BoolConstant) {
				return new BoolConstant(((BoolConstant) leftExp).getValue() &&
						((BoolConstant) rightExp).getValue());
			}
			return new BinaryAndAndExpression(BoolType.getInstance(), leftExp, rightExp);
		}
		throw new CompilerError("Expressions cannot be &&");
	}

}
