package AST.Statement;

import AST.AST;
import AST.Symbol.Scope;
import Utility.CompilerError;

public class ContinueStatement extends Statement {

	public ContinueStatement() {
		if (AST.symbolTable.haveIteration()) {

		} else {
			throw new CompilerError("No iteration to continue");
		}
	}

}
