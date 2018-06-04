package AST.Expression;

import AST.AST;
import AST.Symbol.Scope;
import AST.Symbol.Symbol;
import AST.Symbol.Type;
import AST.Type.BoolType;
import AST.Type.FunctionType;
import AST.Type.IntType;
import IR.IRTranslator;
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
//		if (identifier.equals("i")) {
//			System.out.println("that is it");
//		}
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
		if (getLeftValue() && (symbol.getType() instanceof IntType || symbol.getType() instanceof BoolType)) {
			HASH = symbol.getName();
			IRTranslator.builtOperand.put(HASH, symbol.operand);
		} else {
			HASH = toString().substring(15);
		}

		operand = symbol.operand;
	}
}
