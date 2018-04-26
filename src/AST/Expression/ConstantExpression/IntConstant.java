package AST.Expression.ConstantExpression;

import AST.Type.BoolType;
import AST.Type.IntType;

public class IntConstant extends Constant {
	private int value;

	public IntConstant(int value) {
		super(IntType.getInstance());
		this.value = value;
	}

	public int getValue() {
		return value;
	}

	@Override
	public boolean constantCompatibleWith(Constant obj) {
		return obj instanceof IntConstant || obj instanceof NullConstant;
	}
}
