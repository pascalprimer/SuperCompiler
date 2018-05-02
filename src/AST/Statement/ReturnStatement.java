package AST.Statement;

import AST.AST;
import AST.Expression.Expression;
import AST.Symbol.Scope;
import AST.Type.FunctionType;
import AST.Type.VoidType;
import Utility.CompilerError;

public class ReturnStatement extends Statement {

	private Expression returnValue;

	public ReturnStatement(Expression returnValue) {
		Scope scope = AST.symbolTable.getFunctionScope();
		if (returnValue == null) {
			if (((FunctionType) scope).getReturnType() != VoidType.getInstance()) {
				throw new CompilerError("Nothing to return");
			} else {
				this.returnValue = VoidType.getInstance();//?null还是Void不知道
				return;
			}
		}
		if (returnValue.returnType != VoidType.getInstance()
				&& ((FunctionType) scope).getReturnType().compatibleWith(returnValue.returnType)) {
			this.returnValue = returnValue;
		} else {
			throw new CompilerError("Return type not match");
		}
	}

}
