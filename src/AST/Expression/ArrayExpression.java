package AST.Expression;

import AST.Type.ArrayType;
import AST.Type.IntType;
import Utility.CompilerError;

import java.lang.reflect.Array;

public class ArrayExpression extends Expression {

	private Expression baseExpression, subscriptExpression;

	private ArrayExpression(Expression base, Expression subscript) {
		super("array", base.getLeftValue(), ((ArrayType) base.returnType).prefixArray());
		baseExpression = base;
		subscriptExpression = subscript;
	}

	public static Expression getExpression(Expression base, Expression subscript) {
		if (!(base.returnType instanceof ArrayType)) {
			throw new CompilerError("Not array");
		}
		if (!(subscript.returnType instanceof IntType)) {
			throw new CompilerError("Integer index needed");
		}
		return new ArrayExpression(base, subscript);
	}

}
