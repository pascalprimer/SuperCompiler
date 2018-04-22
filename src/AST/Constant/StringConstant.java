package AST.Constant;

import AST.Type.BoolType;
import AST.Type.StringType;

public class StringConstant extends Constant {
	private String value;

	public StringConstant(String value) {
		super(StringType.getInstance());
		this.value = value;
	}

	public String getValue() {
		return value;
	}

	@Override
	public boolean constantCompatibleWith(Constant obj) {
		return obj instanceof StringConstant || obj instanceof NullConstant;
	}
}
