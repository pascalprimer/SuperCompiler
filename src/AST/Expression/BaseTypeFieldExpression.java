package AST.Expression;

import AST.Type.IntType;
import AST.Type.VoidType;

public class BaseTypeFieldExpression extends Expression {

	public Expression expression;
	public String member;

	public BaseTypeFieldExpression(Expression expression, String member) {
		super("base.base", false, IntType.getInstance());
		this.expression = expression;
		this.member = member;
	}

}
