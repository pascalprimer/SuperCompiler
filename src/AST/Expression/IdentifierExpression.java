package AST.Expression;

import AST.AST;
import AST.Symbol.Scope;
import AST.Symbol.Symbol;
import AST.Symbol.Type;
import AST.Type.FunctionType;
import IR.Instruction.Instruction;
import javafx.util.Pair;

import java.util.List;

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
		if (symbol.getClassBelong() != null) {
			return FieldExpression.getExpression(
					IdentifierExpression.getExpression("this"),
					identifier
			);
		}
		if (symbol.getType() instanceof FunctionType) {
			return new IdentifierExpression(
					false,
					symbol,
					symbol.getType()
			);
		} else {
			if (identifier == "this") {
				return new IdentifierExpression(false, symbol, symbol.getType());
			}
			return new IdentifierExpression(true, symbol, symbol.getType());
		}
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		operand = symbol.operand;
	}
}
