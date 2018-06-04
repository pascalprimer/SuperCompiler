package AST.Expression.UnaryExpression;

import AST.Expression.ConstantExpression.BoolConstant;
import AST.Expression.Expression;
import AST.Type.BoolType;
import IR.IRTranslator;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Instruction.UnaryInstruction;
import IR.RegisterManager;
import Utility.CompilerError;

import java.util.List;

public class UnaryNotExpression extends UnaryExpression {

	private UnaryNotExpression(Expression exp) {
		super("!", false, BoolType.getInstance(), exp);
	}

	public static Expression getExpression(Expression exp) {
		if (exp.returnType instanceof BoolType) {
			if (exp instanceof BoolConstant) {
				return new BoolConstant(!((BoolConstant) exp).getValue());
			}
			return new UnaryNotExpression(exp);
		}
		throw new CompilerError("Not boolean");
	}

	@Override
	public void dfsBuiltOperand(boolean ok) {
		expression.dfsBuiltOperand(ok);
		HASH = "!" + expression.HASH;
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

		expression.translateIR(instructionList);
		operand = RegisterManager.getVirtualRegister();
		instructionList.add(new MoveInstruction(operand, expression.operand));
		instructionList.add(new UnaryInstruction(
				UnaryInstruction.Type.NOT, operand
		));
	}

}
