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

public class BinaryAndExpression extends BinaryExpression {

	private BinaryAndExpression(Type type, Expression leftExp, Expression rightExp) {
		super("&", type, leftExp, rightExp);
	}

	public static Expression getExpression(Expression leftExp, Expression rightExp) {
		if (leftExp.returnType instanceof IntType && rightExp.returnType instanceof IntType) {
			if (leftExp instanceof IntConstant && rightExp instanceof IntConstant) {
				return new IntConstant(((IntConstant) leftExp).getValue() &
						((IntConstant) rightExp).getValue());
			}
			return new BinaryAndExpression(IntType.getInstance(), leftExp, rightExp);
		}
		throw new CompilerError("Expressions cannot be &");
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		leftExpression.translateIR(instructionList);
		rightExpression.translateIR(instructionList);

		HASH = "(" + leftExpression.HASH + "&" + rightExpression.HASH + ")";
		operand = IRTranslator.getBuiltOperand(HASH);
		if (operand != null) {
			return;
		}

		operand = RegisterManager.getVirtualRegister();
		Operand left = leftExpression.operand;
		Operand right = rightExpression.operand;
		instructionList.add(new MoveInstruction(operand, left));
		instructionList.add(new BinaryInstruction(
				BinaryInstruction.Operation.AND, operand, right
		));

		IRTranslator.builtOperand.put(HASH, operand);
	}

}
