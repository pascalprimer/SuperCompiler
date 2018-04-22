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
}
