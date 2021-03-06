package AST.Expression.UnaryExpression;

import AST.Expression.Expression;
import AST.Expression.IdentifierExpression;
import AST.Symbol.Symbol;
import AST.Type.BoolType;
import AST.Type.IntType;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Instruction.UnaryInstruction;
import IR.RegisterManager;
import Utility.CompilerError;

import java.util.List;

//++A

public class UnaryAddExpression extends UnaryExpression {

	private UnaryAddExpression(Expression exp) {
		super("++", true, IntType.getInstance(), exp);
		modifyTag = true;
	}

	static public Expression getExpression(Expression exp) {
		if (exp.returnType instanceof IntType && exp.getLeftValue() == true) {
			return new UnaryAddExpression(exp);
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
				UnaryInstruction.Type.ADD, expression.operand
		));
		instructionList.add(new MoveInstruction(operand, expression.operand));
	}

}
