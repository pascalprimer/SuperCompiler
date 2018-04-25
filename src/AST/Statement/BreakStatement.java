package AST.Statement;

import AST.AST;
import AST.Symbol.Scope;
import Utility.CompilerError;

public class BreakStatement extends Statement {

	public BreakStatement() {
		if (AST.symbolTable.haveIteration()) {

		} else {
			throw new CompilerError("No iteration to break");
		}
	}

}
