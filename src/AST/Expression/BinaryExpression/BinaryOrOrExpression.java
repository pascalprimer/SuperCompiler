package AST.Expression.BinaryExpression;

import AST.Expression.ConstantExpression.BoolConstant;
import AST.Expression.Expression;
import AST.Symbol.Type;
import AST.Type.BoolType;
import IR.IRTranslator;
import IR.Instruction.*;
import IR.Operand.Immediate;
import IR.Operand.Operand;
import IR.RegisterManager;
import Utility.CompilerError;

import java.util.List;

public class BinaryOrOrExpression extends BinaryExpression {

	private BinaryOrOrExpression(Type type, Expression leftExp, Expression rightExp) {
		super("||", type, leftExp, rightExp);
	}

	public static Expression getExpression(Expression leftExp, Expression rightExp) {
		if (leftExp.returnType instanceof BoolType && rightExp.returnType instanceof BoolType) {
			if (leftExp instanceof BoolConstant && rightExp instanceof BoolConstant) {
				return new BoolConstant(((BoolConstant) leftExp).getValue() ||
						((BoolConstant) rightExp).getValue());
			}
			return new BinaryOrOrExpression(BoolType.getInstance(), leftExp, rightExp);
		}
		throw new CompilerError("Expressions cannot be ||");
	}

	@Override
	public void dfsBuiltOperand(boolean ok) {
		leftExpression.dfsBuiltOperand(ok);
		rightExpression.dfsBuiltOperand(false);
		HASH = (leftExpression.HASH + "||" + rightExpression.HASH);
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

		/*
		cmp leftExp 1
		je cmp_or
		cmp rightExp 1
		cmp_or:
		cset operand E
		 */
		leftExpression.translateIR(instructionList);
		Operand left = leftExpression.operand;
		Label label = new Label("cmp_or");
		instructionList.add(new CompareInstruction(left, new Immediate(1)));
		instructionList.add(new JumpInstruction(JumpInstruction.Type.JE, label));

		rightExpression.translateIR(instructionList);
		Operand right = rightExpression.operand;
		instructionList.add(new CompareInstruction(right, new Immediate(1)));
		instructionList.add(label);
		operand = RegisterManager.getVirtualRegister();
		instructionList.add(new CSetInstruction(CSetInstruction.Type.E, operand));
	}

}