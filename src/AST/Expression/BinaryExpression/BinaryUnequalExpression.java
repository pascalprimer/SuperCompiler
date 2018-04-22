package AST.Expression.BinaryExpression;

import AST.Constant.*;
import AST.Expression.Expression;
import AST.Symbol.Type;
import AST.Type.BoolType;
import Utility.CompilerError;

public class BinaryUnequalExpression extends BinaryExpression {

	private BinaryUnequalExpression(Type type, Expression leftExp, Expression rightExp) {
		super("!=", type, leftExp, rightExp);
	}

	public static Expression getExpression(Expression leftExp, Expression rightExp) {
		if (leftExp instanceof Constant && rightExp instanceof Constant) {
			if (leftExp instanceof NullConstant && rightExp instanceof NullConstant) {
				return new BoolConstant(false);
			}
			if (leftExp instanceof NullConstant || rightExp instanceof NullConstant) {
				return new BoolConstant(true);
			}
			if (!((Constant) leftExp).constantCompatibleWith((Constant) rightExp)) {
				throw new CompilerError("Expressions cannot be compared");
			}
			if (leftExp instanceof BoolConstant) {
				return new BoolConstant(((BoolConstant) leftExp).getValue()
						!= ((BoolConstant) rightExp).getValue());
			}
			if (leftExp instanceof IntConstant) {
				return new BoolConstant(((IntConstant) leftExp).getValue()
						!= ((IntConstant) rightExp).getValue());
			}
			return new BoolConstant(!((StringConstant) leftExp).getValue().
					equals(((StringConstant) rightExp).getValue()));
		}
		return new BinaryUnequalExpression(BoolType.getInstance(), leftExp, rightExp);
	}
}