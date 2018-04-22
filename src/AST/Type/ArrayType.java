package AST.Type;

import AST.Expression.Expression;
import AST.Symbol.Type;
import Utility.CompilerError;

public class ArrayType extends Type {

	private Type arrayType;
	private Expression subscript;

	public ArrayType(Type arrayType, Expression subscript) {
		this.arrayType = arrayType;
		this.subscript = subscript;
		if (subscript.getReturnType() != IntType.getInstance()) {
			throw new CompilerError("Subscript of array must be integers");
		}
	}

	@Override
	public boolean compatibleWith(Type obj) {
		return false;
	}
}