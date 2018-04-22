package AST.Expression.BinaryExpression;

import AST.Constant.IntConstant;
import AST.Constant.StringConstant;
import AST.Expression.Expression;
import AST.Symbol.Type;
import AST.Type.IntType;
import AST.Type.StringType;
import Utility.CompilerError;

public class BinarySubTractExpression  extends BinaryExpression {

	private BinarySubTractExpression(Type type, Expression leftExp, Expression rightExp) {
		super("-", type, leftExp, rightExp);
	}

	public static Expression getExpression(Expression leftExp, Expression rightExp) {
		if (leftExp.returnType instanceof IntType && rightExp.returnType instanceof IntType) {
			if (leftExp instanceof IntConstant && rightExp instanceof IntConstant) {
				return new IntConstant(((IntConstant) leftExp).getValue() -
						((IntConstant) rightExp).getValue());
			}
			return new BinarySubTractExpression(IntType.getInstance(), leftExp, rightExp);
		}
		throw new CompilerError("Expressions cannot be subtracted");
	}

}