package AST.Expression;

import AST.Symbol.Type;

public abstract class Expression {
	private String oper;
	private boolean leftValue;
	public Type returnType;

	public Expression(String oper, boolean leftValue, Type type) {
		this.oper = oper;
		this.leftValue = leftValue;
		this.returnType = type;
	}

	public boolean getLeftValue() {
		return leftValue;
	}

	public String getOper() {
		return oper;
	}

	/*public Type getReturnType() {
		return returnType;
	}*/
}
