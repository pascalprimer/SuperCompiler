package AST.Expression;

import Utility.CompilerError;

public class AssignExpression extends Expression {
	private Expression variable, subscript;

	private AssignExpression(Expression variable, Expression subscript) {
		super("=", true, subscript.returnType);
		this.variable = variable;
		this.subscript = subscript;
	}

	public static Expression getExpression(Expression variable, Expression expression) {
		/*System.err.println(variable.returnType.toString()
				+ " ---- " + expression.returnType.toString()
		);*/
		if (variable.getLeftValue() == false) {
			throw new CompilerError("Not left value");
		}
		if (!variable.returnType.compatibleWith(expression.returnType)) {
			throw new CompilerError("Different type when assigning");
		}
		return new AssignExpression(variable, expression);
	}
}
