package AST.Expression.BinaryExpression;

import AST.AST;
import AST.Expression.ConstantExpression.*;
import AST.Expression.Expression;
import AST.Expression.FunctionCallExpression;
import AST.Symbol.Type;
import AST.Type.BoolType;
import AST.Type.StringType;
import IR.IRTranslator;
import IR.Instruction.CSetInstruction;
import IR.Instruction.CompareInstruction;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Operand.*;
import IR.RegisterManager;
import Utility.CompilerError;

import java.util.ArrayList;
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
		if (leftExp.returnType instanceof StringType) {
			return new FunctionCallExpression(
					AST.globalFunctionTable.getFunctionType("__string_not_equal__"),
					new ArrayList<Expression>() {{
						add(leftExp); add(rightExp);
					}}
			);
		}
		return new BinaryUnequalExpression(BoolType.getInstance(), leftExp, rightExp);
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		leftExpression.translateIR(instructionList);
		rightExpression.translateIR(instructionList);

		HASH = "(" + leftExpression.HASH + "!=" + rightExpression.HASH + ")";
		operand = IRTranslator.getBuiltOperand(HASH);
		if (operand != null) {
			return;
		}

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
			instructionList.add(new MoveInstruction(tmp, left));
			instructionList.add(new CompareInstruction(tmp, right));
		} else {
			if (left instanceof Immediate) {
				instructionList.add(new CompareInstruction(right, left));
			} else {
				instructionList.add(new CompareInstruction(left, right));
			}
		}
		instructionList.add(new CSetInstruction(CSetInstruction.Type.NE, operand));

		IRTranslator.builtOperand.put(HASH, operand);
	}
}
