package AST.Expression.BinaryExpression;

import AST.Expression.ConstantExpression.BoolConstant;
import AST.Expression.Expression;
import AST.Symbol.Type;
import AST.Type.BoolType;
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
	public void translateIR(List<Instruction> instructionList) {
		/*
		cmp leftExp 0
		je cmp_and
		cmp rightExp 0
		cmp_and:
		cset operand NE
		 */
		leftExpression.translateIR(instructionList);
		Operand left = leftExpression.operand;
		Label label = new Label("cmp_and:");
		instructionList.add(new CompareInstruction(left, new Immediate(0)));
		instructionList.add(new JumpInstruction(JumpInstruction.Type.JE, label));
		rightExpression.translateIR(instructionList);
		Operand right = rightExpression.operand;
		instructionList.add(new CompareInstruction(right, new Immediate(0)));
		instructionList.add(label);
		operand = RegisterManager.getVirtualRegister();
		instructionList.add(new CSetInstruction(CSetInstruction.Type.NE, operand));
	}

}
