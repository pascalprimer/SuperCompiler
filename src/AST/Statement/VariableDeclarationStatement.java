package AST.Statement;

import AST.Expression.Expression;
import AST.Symbol.Scope;
import AST.Symbol.Symbol;
import AST.Symbol.Type;
import AST.Type.NullType;
import AST.Type.VoidType;
import Utility.CompilerError;

public class VariableDeclarationStatement extends Statement {

	private Symbol symbol;
	private Expression declarationExpression;

	public VariableDeclarationStatement(Symbol symbol) {
		if (symbol.getType() == NullType.getInstance()
				|| symbol.getType() == VoidType.getInstance()) {
			throw new CompilerError("null, void cannot be declared");
		}
		this.symbol = symbol;
		this.declarationExpression = null;
	}

	public VariableDeclarationStatement(Symbol symbol, Expression declarationExpression) {
		if (!symbol.getType().compatibleWith(declarationExpression.returnType)) {
			throw new CompilerError("Type not match when variable declaring");
		}
		this.symbol = symbol;
		this.declarationExpression = declarationExpression;
	}

	public void setDeclarationExpression(Expression declarationExpression) {
		System.err.println(symbol.toString() + " to -> " + declarationExpression.returnType.toString());
		if (!symbol.getType().compatibleWith(declarationExpression.returnType)) {
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
