package AST.Constant;

import AST.Type.NullType;

public class NullConstant extends Constant {
	public NullConstant() {
		super(NullType.getInstance());
	}
}
