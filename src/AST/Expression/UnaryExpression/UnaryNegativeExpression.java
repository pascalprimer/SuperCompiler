package AST.Expression.UnaryExpression;

import AST.Expression.ConstantExpression.IntConstant;
import AST.Expression.Expression;
import AST.Type.IntType;
import IR.IRTranslator;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Instruction.UnaryInstruction;
import IR.RegisterManager;
import Utility.CompilerError;

import java.util.List;

public class UnaryNegativeExpression extends UnaryExpression {

	private UnaryNegativeExpression(Expression exp) {
		super("-", false, IntType.getInstance(), exp);
	}

	public static Expression getExpression(Expression exp) {
		if (exp.returnType instanceof IntType) {
			if (exp instanceof IntConstant) {
				return new IntConstant(-((IntConstant) exp).getValue());
			}
			return new UnaryNegativeExpression(exp);
		}
		throw new CompilerError("Not integer");
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		expression.translateIR(instructionList);

		HASH = "-" + expression.HASH;
		operand = IRTranslator.getBuiltOperand(HASH);
		if (operand != null) {
			return;
		}

		operand = RegisterManager.getVirtualRegister();
		instructionList.add(new MoveInstruction(operand, expression.operand));
		instructionList.add(new UnaryInstruction(
				UnaryInstruction.Type.NEG, operand
		));

		IRTranslator.builtOperand.put(HASH, operand);
	}


}