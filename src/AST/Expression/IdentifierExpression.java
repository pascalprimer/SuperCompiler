package AST.Expression;

import AST.AST;
import AST.Symbol.Scope;
import AST.Symbol.Symbol;
import AST.Symbol.Type;
import AST.Type.FunctionType;
import javafx.util.Pair;

public class IdentifierExpression extends Expression {
	private Symbol symbol;

	private IdentifierExpression(boolean leftValue, Symbol symbol, Type returnType) {
		super("ID", leftValue, returnType);
		this.symbol = symbol;
	}

	public Symbol getSymbol() {
		return symbol;
	}

	public static Expression getExpression(String identifier) {
		Symbol symbol = AST.symbolTable.getSymbol(identifier);
		if (symbol.getType() instanceof FunctionType) {
			return new IdentifierExpression(
					false,
					symbol,
					//((FunctionType) symbol.getType()).getReturnType()
					symbol.getType()
			);
		} else {
			return new IdentifierExpression(true, symbol, symbol.getType());
		}
	}
}
