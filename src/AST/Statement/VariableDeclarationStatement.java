package AST.Statement;

import AST.Expression.Expression;
import AST.Symbol.Scope;
import AST.Symbol.Symbol;
import AST.Symbol.Type;
import Utility.CompilerError;

public class VariableDeclarationStatement extends Statement {

	private Symbol symbol;
	private Expression declarationExpression;

	public VariableDeclarationStatement(Symbol symbol) {
		this.symbol = symbol;
		this.declarationExpression = null;
	}

	public VariableDeclarationStatement(Symbol symbol, Expression declarationExpression) {
		if (declarationExpression.returnType != symbol.getType()) {
			throw new CompilerError("Type not match when variable declaring");
		}
		this.symbol = symbol;
		this.declarationExpression = declarationExpression;
	}

	public void setDeclarationExpression(Expression declarationExpression) {
		if (declarationExpression.returnType != symbol.getType()) {
			throw new CompilerError("Type not match when variable declaring");
		}
		this.declarationExpression = declarationExpression;
	}

	public Symbol getSymbol() {
		return symbol;
	}

	public Type getType() {
		return symbol.getType();
	}

	public Expression getDeclarationExpression() {
		return declarationExpression;
	}

}
