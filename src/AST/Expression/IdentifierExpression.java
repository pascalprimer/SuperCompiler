package AST.Expression;

import AST.AST;
import AST.Symbol.Scope;
import AST.Symbol.Symbol;
import AST.Type.FunctionType;
import javafx.util.Pair;

public class IdentifierExpression extends Expression {
	private Symbol symbol;

	private IdentifierExpression(boolean leftValue, Symbol symbol) {
		super("ID", leftValue, symbol.getType());
		this.symbol = symbol;
	}

	public static Expression getExpression(String identifier) {
		Symbol symbol = AST.symbolTable.getSymbol(identifier);
		if (symbol.getType() instanceof FunctionType) {
			return new IdentifierExpression(false, symbol);
		} else {
			return new IdentifierExpression(true, symbol);
		}
	}
}
