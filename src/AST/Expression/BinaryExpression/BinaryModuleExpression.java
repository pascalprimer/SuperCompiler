package AST.Expression.BinaryExpression;

import AST.Expression.ConstantExpression.IntConstant;
import AST.Expression.Expression;
import AST.Symbol.Type;
import AST.Type.IntType;
import IR.Instruction.BinaryInstruction;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Operand.Address;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;
import IR.RegisterManager;
import Utility.CompilerError;

import java.util.List;

public class BinaryModuleExpression extends BinaryExpression {
	private BinaryModuleExpression(Type type, Expression leftExp, Expression rightExp) {
		super("%", type, leftExp, rightExp);
	}

	public static Expression getExpression(Expression leftExp, Expression rightExp) {
		if (leftExp.returnType instanceof IntType && rightExp.returnType instanceof IntType) {
			if (leftExp instanceof IntConstant && rightExp instanceof IntConstant) {
				if (((IntConstant) rightExp).getValue() == 0) {
					throw new CompilerError("Divided by 0");
				}
				return new IntConstant(((IntConstant) leftExp).getValue() %
						((IntConstant) rightExp).getValue());
			}
			return new BinaryModuleExpression(IntType.getInstance(), leftExp, rightExp);
		}
		throw new CompilerError("Expressions cannot be divided");
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		leftExpression.translateIR(instructionList);
		rightExpression.translateIR(instructionList);
		operand = RegisterManager.getVirtualRegister();
		Operand left = leftExpression.operand;
		Operand right = rightExpression.operand;
		if (left instanceof Address && right instanceof Address) {
			VirtualRegister tmp = RegisterManager.getVirtualRegister();
			instructionList.add(new MoveInstruction(left, tmp));
			instructionList.add(
					new BinaryInstruction(
							BinaryInstruction.Operation.MOD, tmp, right, operand
					)
			);
		} else {
			instructionList.add(
					new BinaryInstruction(
							BinaryInstruction.Operation.MOD, left, right, operand
					)
			);
		}
	}

}
