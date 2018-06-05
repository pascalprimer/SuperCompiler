package AST.Expression.UnaryExpression;

import AST.Expression.Expression;
import AST.Expression.IdentifierExpression;
import AST.Symbol.Symbol;
import AST.Type.IntType;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Instruction.UnaryInstruction;
import IR.RegisterManager;
import Utility.CompilerError;

import java.util.List;

public class UnarySubtractExpression extends UnaryExpression {

	private UnarySubtractExpression(Expression exp) {
		super("--", true, IntType.getInstance(), exp);
		modifyTag = true;
	}

	public static Expression getExpression(Expression exp) {
		if (exp.returnType instanceof IntType && exp.getLeftValue() == true) {
			return new UnarySubtractExpression(exp);
		}
		throw new CompilerError("Not left value or integer");
	}

	@Override
	public void dfsBuiltOperand(boolean ok) {

	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		if (expression instanceof IdentifierExpression) {
			Symbol symbol = ((IdentifierExpression) expression).getSymbol();
			symbol.number++;
		}

		expression.translateIR(instructionList);
		operand = RegisterManager.getVirtualRegister();
		instructionList.add(new UnaryInstruction(
				UnaryInstruction.Type.SUB, expression.operand
		));
		instructionList.add(new MoveInstruction(operand, expression.operand));
	}

}
