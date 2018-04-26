package AST.Expression.ConstantExpression;

import AST.Type.VoidType;

public class VoidConstant extends Constant {

	public VoidConstant() {
		super(VoidType.getInstance());
	}

	@Override
	public boolean constantCompatibleWith(Constant obj) {
		return false;
	}

}
