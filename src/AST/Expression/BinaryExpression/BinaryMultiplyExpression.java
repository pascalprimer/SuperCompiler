package AST.Expression.BinaryExpression;

import AST.Expression.ConstantExpression.IntConstant;
import AST.Expression.Expression;
import AST.Symbol.Type;
import AST.Type.IntType;
import IR.IRTranslator;
import IR.Instruction.BinaryInstruction;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Operand.Address;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;
import IR.RegisterManager;
import Utility.CompilerError;

import java.util.List;

public class BinaryMultiplyExpression extends BinaryExpression {

	private BinaryMultiplyExpression(Type type, Expression leftExp, Expression rightExp) {
		super("*", type, leftExp, rightExp);
	}

	public static Expression getExpression(Expression leftExp, Expression rightExp) {
		if (leftExp.returnType instanceof IntType && rightExp.returnType instanceof IntType) {
			if (leftExp instanceof IntConstant && rightExp instanceof IntConstant) {
				return new IntConstant(((IntConstant) leftExp).getValue() *
						((IntConstant) rightExp).getValue());
			}
			return new BinaryMultiplyExpression(IntType.getInstance(), leftExp, rightExp);
		}
		throw new CompilerError("Expressions cannot be multiplied");
	}

	@Override
	public void dfsBuiltOperand(boolean ok) {
		leftExpression.dfsBuiltOperand(ok);
		rightExpression.dfsBuiltOperand(ok);
		HASH = "(" + leftExpression.HASH + "*" + rightExpression.HASH + ")";
		if (ok) {
			identical = IRTranslator.getBuiltExpression(HASH, this);
		}
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		if (identical != null) {
			operand = identical.operand;
			return;
		}

		leftExpression.translateIR(instructionList);
		rightExpression.translateIR(instructionList);

		operand = RegisterManager.getVirtualRegister();
		Operand left = leftExpression.operand;
		Operand right = rightExpression.operand;
		instructionList.add(new MoveInstruction(operand, left));
		instructionList.add(new BinaryInstruction(
				BinaryInstruction.Operation.MUL, operand, right
		));
	}

}
