package AST.Expression;

import AST.Symbol.Type;

public class SubExpression extends Expression {

	private SubExpression(String oper, boolean leftValue, Type returnType) {
		super(oper, leftValue, returnType);
	}

	public static Expression getExpression(Expression exp) {
		//if useful or kidding???
		return exp;
		//return new SubExpression(exp.getOper(), exp.getLeftValue(), exp.returnType);
	}

}
