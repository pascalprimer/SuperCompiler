package AST.Expression.BinaryExpression;

import AST.Expression.ConstantExpression.*;
import AST.Expression.Expression;
import AST.Symbol.Type;
import AST.Type.BoolType;
import IR.Instruction.CSetInstruction;
import IR.Instruction.CompareInstruction;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Operand.*;
import IR.RegisterManager;
import Utility.CompilerError;

import java.util.List;

public class BinaryUnequalExpression extends BinaryExpression {

	private BinaryUnequalExpression(Type type, Expression leftExp, Expression rightExp) {
		super("!=", type, leftExp, rightExp);
	}

	public static Expression getExpression(Expression leftExp, Expression rightExp) {
		if (leftExp instanceof Constant && rightExp instanceof Constant) {
			if (leftExp instanceof NullConstant && rightExp instanceof NullConstant) {
				return new BoolConstant(false);
			}
			if (leftExp instanceof NullConstant || rightExp instanceof NullConstant) {
				return new BoolConstant(true);
			}
			if (!((Constant) leftExp).constantCompatibleWith((Constant) rightExp)) {
				throw new CompilerError("Expressions cannot be compared");
			}
			if (leftExp instanceof BoolConstant) {
				return new BoolConstant(((BoolConstant) leftExp).getValue()
						!= ((BoolConstant) rightExp).getValue());
			}
			if (leftExp instanceof IntConstant) {
				return new BoolConstant(((IntConstant) leftExp).getValue()
						!= ((IntConstant) rightExp).getValue());
			}
			return new BoolConstant(!((StringConstant) leftExp).getValue().
					equals(((StringConstant) rightExp).getValue()));
		}
		if (!leftExp.returnType.compatibleWith(rightExp.returnType)) {
			throw new CompilerError(leftExp.returnType.toString() + ", "
					+ rightExp.returnType.toString() + " cannot be compared");
		}
		return new BinaryUnequalExpression(BoolType.getInstance(), leftExp, rightExp);
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		leftExpression.translateIR(instructionList);
		rightExpression.translateIR(instructionList);
		Operand left = leftExpression.operand;
		Operand right = rightExpression.operand;
		if (left == right) {
			operand = new Immediate(0);
			return;
		}
		if (left instanceof StringMemory && right instanceof StringMemory) {
			if (((StringMemory) left).tag.compareTo(((StringMemory) right).tag) != 0) {
				operand = new Immediate(1);
			} else {
				operand = new Immediate(0);
			}
			return;
		}
		if (left instanceof Immediate && right instanceof Immediate) {
			if (((Immediate) left).getValue() != ((Immediate) right).getValue()) {
				operand = new Immediate(1);
			} else {
				operand = new Immediate(0);
			}
			return;
		}
		operand = RegisterManager.getVirtualRegister();
		//fixme optimize!!!???!!!
		if (left instanceof Address && right instanceof Address) {
			VirtualRegister tmp = RegisterManager.getVirtualRegister();
			instructionList.add(new MoveInstruction(left, tmp));
			instructionList.add(new CompareInstruction(tmp, right));
		} else {
			instructionList.add(new CompareInstruction(left, right));
		}
		instructionList.add(new CSetInstruction(CSetInstruction.Type.NEQ, operand));
	}
}
