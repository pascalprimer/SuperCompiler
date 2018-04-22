package AST.Expression.BinaryExpression;

import AST.Constant.BoolConstant;
import AST.Constant.IntConstant;
import AST.Constant.StringConstant;
import AST.Expression.Expression;
import AST.Symbol.Type;
import AST.Type.BoolType;
import AST.Type.IntType;
import AST.Type.StringType;
import Utility.CompilerError;

public class BinaryGreaterEqualExpression extends BinaryExpression {

	private BinaryGreaterEqualExpression(Type type, Expression leftExp, Expression rightExp) {
		super(">=", type, leftExp, rightExp);
	}

	public static Expression getExpression(Expression leftExp, Expression rightExp) {
		if (leftExp.returnType instanceof IntType && rightExp.returnType instanceof IntType) {
			if (leftExp instanceof IntConstant && rightExp instanceof IntConstant) {
				return new BoolConstant(((IntConstant) leftExp).getValue() >=
						((IntConstant) rightExp).getValue());
			}
			return new BinaryGreaterEqualExpression(BoolType.getInstance(), leftExp, rightExp);
		}
		if (leftExp.returnType instanceof StringType && rightExp.returnType instanceof StringType) {
			if (leftExp instanceof StringConstant && rightExp instanceof StringConstant) {
				String lstr = ((StringConstant) leftExp).getValue();
				String rstr = ((StringConstant) rightExp).getValue();
				return new BoolConstant(lstr.compareTo(rstr) >= 0);
			}
			return new BinaryGreaterEqualExpression(BoolType.getInstance(), leftExp, rightExp);
		}
		throw new CompilerError("Expressions cannot be compared");
	}

}
