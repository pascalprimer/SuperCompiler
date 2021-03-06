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

public class BinaryAndAndExpression extends BinaryExpression {

	private BinaryAndAndExpression(Type type, Expression leftExp, Expression rightExp) {
		super("&&", type, leftExp, rightExp);
	}

	public static Expression getExpression(Expression leftExp, Expression rightExp) {
		if (leftExp.returnType instanceof BoolType && rightExp.returnType instanceof BoolType) {
			if (leftExp instanceof BoolConstant && rightExp instanceof BoolConstant) {
				return new BoolConstant(((BoolConstant) leftExp).getValue() &&
						((BoolConstant) rightExp).getValue());
			}
			return new BinaryAndAndExpression(BoolType.getInstance(), leftExp, rightExp);
		}
		throw new CompilerError("Expressions cannot be &&");
	}

	@Override
	public void dfsBuiltOperand(boolean ok) {
		leftExpression.dfsBuiltOperand(ok);
		rightExpression.dfsBuiltOperand(false);
		HASH = (leftExpression.HASH + "&&" + rightExpression.HASH);
		//System.out.println("&&");
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
		cmp leftExp 0
		je cmp_and
		cmp rightExp 0
		cmp_and:
		cset operand NE
		 */
		Label fatherAndLabel = IRTranslator.fatherAndLabel;
		Label label = fatherAndLabel == null ? new Label("cmp_and") : fatherAndLabel;

		if (leftExpression instanceof BinaryAndAndExpression) {
			IRTranslator.fatherAndLabel = label;
			leftExpression.translateIR(instructionList);
			instructionList.add(new JumpInstruction(JumpInstruction.Type.JE, label));
			//Operand left = leftExpression.operand;
			//instructionList.add(new CompareInstruction(left, new Immediate(0)));
			//instructionList.add(new JumpInstruction(JumpInstruction.Type.JE, label));
		} else {
			leftExpression.translateIR(instructionList);
			Operand left = leftExpression.operand;
			instructionList.add(new CompareInstruction(left, new Immediate(0)));
			instructionList.add(new JumpInstruction(JumpInstruction.Type.JE, label));
		}

		rightExpression.translateIR(instructionList);
		Operand right = rightExpression.operand;
		instructionList.add(new CompareInstruction(right, new Immediate(0)));
		operand = RegisterManager.getVirtualRegister();
		//System.err.println(label.toString(1) + " " + (fatherAndLabel == label));
		if (label != fatherAndLabel) {
			instructionList.add(label);
			instructionList.add(new CSetInstruction(CSetInstruction.Type.NE, operand));
		}
		IRTranslator.fatherAndLabel = fatherAndLabel;
	}

}
