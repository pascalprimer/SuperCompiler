package AST.Constant;

import AST.Type.BoolType;

public class BoolConstant extends Constant {
	private boolean value;

	public BoolConstant(boolean value) {
		super(BoolType.getInstance());
		this.value = value;
	}

	public boolean getValue() {
		return value;
	}

	@Override
	public boolean constantCompatibleWith(Constant obj) {
		return obj instanceof BoolConstant || obj instanceof NullConstant;
	}
}
