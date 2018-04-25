package AST.Statement;

import AST.Expression.Expression;
import AST.Symbol.Scope;
import AST.Type.BoolType;
import Utility.CompilerError;

public class SelectionStatement extends Statement implements Scope {

	private Expression condition;
	private Statement thenStatement, elseStatement;

	public SelectionStatement() {
		condition = null;
		thenStatement = null;
		elseStatement = null;
	}

	public SelectionStatement(Expression condition,
	                          Statement thenStatement,
	                          Statement elseStatement) {
		if (!(condition.returnType instanceof BoolType)) {
			throw new CompilerError("Condition in if clause must be boolean");
		}
		this.condition = condition;
		this.thenStatement = thenStatement;
		this.elseStatement = elseStatement;
	}

	public Expression getCondition() {
		return condition;
	}

	public Statement getElseStatement() {
		return elseStatement;
	}

	public Statement getThenStatement() {
		return thenStatement;
	}

	public void setCondition(Expression condition) {
		if (!(condition.returnType instanceof BoolType)) {
			throw new CompilerError("Condition in if clause must be boolean");
		}
		this.condition = condition;
	}

	public void setElseStatement(Statement elseStatement) {
		this.elseStatement = elseStatement;
	}

	public void setThenStatement(Statement thenStatement) {
		this.thenStatement = thenStatement;
	}
}
