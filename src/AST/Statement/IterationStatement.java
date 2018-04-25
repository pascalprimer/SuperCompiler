//both while and for

package AST.Statement;

import AST.Expression.Expression;
import AST.Symbol.Scope;
import AST.Type.BoolType;
import Utility.CompilerError;

public class IterationStatement extends Statement implements Scope {

	private Expression initialization, termination, operation;
	private Statement statement;

	public IterationStatement() {
		initialization = termination = operation = null;
		statement = null;
	}

	public IterationStatement(Expression init, Expression term, Expression op, Statement stt) {
		if (!(term.returnType instanceof BoolType)) {
			throw new CompilerError("Termination must be boolean");
		}
		initialization = init;
		termination = term;
		operation = op;
		statement = stt;
	}

	public void setInitialization(Expression initialization) {
		this.initialization = initialization;
	}

	public void setOperation(Expression operation) {
		this.operation = operation;
	}

	public void setStatement(Statement statement) {
		this.statement = statement;
	}

	public void setTermination(Expression termination) {
		this.termination = termination;
	}

	public Statement getStatement() {
		return statement;
	}

	public Expression getInitialization() {
		return initialization;
	}

	public Expression getOperation() {
		return operation;
	}

	public Expression getTermination() {
		return termination;
	}
}
