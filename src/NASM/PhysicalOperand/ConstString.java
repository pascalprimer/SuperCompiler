package NASM.PhysicalOperand;

import AST.Expression.ConstantExpression.Constant;

public class ConstString extends PhysicalOperand {

	public String tag;

	public ConstString(String tag) {
		this.tag = tag;
	}

	@Override
	public String toString() {
		return tag;
	}
}
