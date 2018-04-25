package AST.Type;

import AST.Expression.Expression;
import AST.Symbol.Type;
import Utility.CompilerError;

public class ArrayType extends Type {

	private Type arrayType;
	private int dimension;

	public ArrayType(Type arrayType, int dimension) {
		this.arrayType = arrayType;
		this.dimension = dimension;
	}

	public int getDimension() {
		return dimension;
	}

	public Type getArrayType() {
		return arrayType;
	}

	public Type prefixArray() {
		if (dimension == 1) {
			return arrayType;
			//throw new CompilerError("1-dim array to reduce dim!!!???!!!\nWhether of importance");
		}
		return new ArrayType(arrayType, dimension - 1);
	}

	@Override
	public String toString() {
		return arrayType.toString() + "[] * " + String.valueOf(dimension);
	}

	@Override
	public boolean compatibleWith(Type obj) {
		if (obj instanceof NullType) {
			return true;
		}
		if (obj instanceof ArrayType
				&& arrayType == ((ArrayType) obj).arrayType
				&& dimension == ((ArrayType) obj).dimension) {
			return true;
		}
		return false;
	}
}