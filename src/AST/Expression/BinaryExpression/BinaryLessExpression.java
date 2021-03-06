package AST.Expression.BinaryExpression;

import AST.AST;
import AST.Expression.ConstantExpression.BoolConstant;
import AST.Expression.ConstantExpression.IntConstant;
import AST.Expression.ConstantExpression.StringConstant;
import AST.Expression.Expression;
import AST.Expression.FunctionCallExpression;
import AST.Symbol.Type;
import AST.Type.BoolType;
import AST.Type.IntType;
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

public class BinaryLessExpression extends BinaryExpression {

	private BinaryLessExpression(Type type, Expression leftExp, Expression rightExp) {
		super("<", type, leftExp, rightExp);
	}

	public static Expression getExpression(Expression leftExp, Expression rightExp) {
		if (leftExp.returnType instanceof IntType && rightExp.returnType instanceof IntType) {
			if (leftExp instanceof IntConstant && rightExp instanceof IntConstant) {
				return new BoolConstant(((IntConstant) leftExp).getValue() <
						((IntConstant) rightExp).getValue());
			}
			return new BinaryLessExpression(BoolType.getInstance(), leftExp, rightExp);
		}
		if (leftExp.returnType instanceof StringType && rightExp.returnType instanceof StringType) {
			if (leftExp instanceof StringConstant && rightExp instanceof StringConstant) {
				String lstr = ((StringConstant) leftExp).getValue();
				String rstr = ((StringConstant) rightExp).getValue();
				return new BoolConstant(lstr.compareTo(rstr) < 0);
			}
			return new FunctionCallExpression(
					AST.globalFunctionTable.getFunctionType("__string_less__"),
					new ArrayList<Expression>() {{
						add(leftExp); add(rightExp);
					}}
			);
		}
		//return new BinaryLessExpression(BoolType.getInstance(), leftExp, rightExp);
		throw new CompilerError("Expressions cannot be compared");
	}

	@Override
	public void dfsBuiltOperand(boolean ok) {
		leftExpression.dfsBuiltOperand(ok);
		rightExpression.dfsBuiltOperand(ok);
		HASH = "(" + leftExpression.HASH + "<" + rightExpression.HASH + ")";
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

		Operand left = leftExpression.operand;
		Operand right = rightExpression.operand;
		if (left == right) {
			operand = new Immediate(0);
			return;
		}
//		if (left instanceof StringMemory && right instanceof StringMemory) {
//			if (((StringMemory) left).tag.compareTo(((StringMemory) right).tag) < 0) {
//				operand = new Immediate(1);
//			} else {
//				operand = new Immediate(0);
//			}
//			return;
//		}
		if (left instanceof Immediate && right instanceof Immediate) {
			if (((Immediate) left).getValue() < ((Immediate) right).getValue()) {
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
			instructionList.add(new CSetInstruction(CSetInstruction.Type.L, operand));
			return;
		}
		if (left instanceof Immediate) {
			instructionList.add(new CompareInstruction(right, left));
			instructionList.add(new CSetInstruction(CSetInstruction.Type.G, operand));
		} else {
			instructionList.add(new CompareInstruction(left, right));
			instructionList.add(new CSetInstruction(CSetInstruction.Type.L, operand));
		}
	}

}
