package AST.Statement;

import AST.AST;
import AST.Expression.Expression;
import AST.Symbol.Scope;
import AST.Type.FunctionType;
import Utility.CompilerError;

public class ReturnStatement extends Statement {

	private Expression returnValue;

	public ReturnStatement(Expression returnValue) {
		Scope scope = AST.symbolTable.getFunctionScope();
		if (scope instanceof FunctionType) {
			if (returnValue.returnType == ((FunctionType) scope).getReturnType()) {
				this.returnValue = returnValue;
			} else {
				throw new CompilerError("Return type not match");
			}
		}
	}

}
