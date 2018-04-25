package AST.Expression.ConstantExpression;

import AST.Type.NullType;

public class NullConstant extends Constant {
	public NullConstant() {
		super(NullType.getInstance());
	}

	@Override
	public boolean constantCompatibleWith(Constant obj) {
		return true;
	}
}
