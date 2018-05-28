package AST.Expression.UnaryExpression;

import AST.Expression.Expression;
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
	}

	static public Expression getExpression(Expression exp) {
		if (exp.returnType instanceof IntType && exp.getLeftValue() == true) {
			return new UnaryAddExpression(exp);
		}
		throw new CompilerError("Not left value or integer");
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		expression.translateIR(instructionList);
		operand = RegisterManager.getVirtualRegister();
		instructionList.add(new MoveInstruction(operand, expression.operand));
		instructionList.add(new UnaryInstruction(
				UnaryInstruction.Type.ADD, operand
		));
	}

}
