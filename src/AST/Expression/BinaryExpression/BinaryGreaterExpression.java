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

public class BinaryGreaterExpression extends BinaryExpression {

	private BinaryGreaterExpression(Type type, Expression leftExp, Expression rightExp) {
		super(">", type, leftExp, rightExp);
	}

	public static Expression getExpression(Expression leftExp, Expression rightExp) {
		if (leftExp.returnType instanceof IntType && rightExp.returnType instanceof IntType) {
			if (leftExp instanceof IntConstant && rightExp instanceof IntConstant) {
				return new BoolConstant(((IntConstant) leftExp).getValue() >
						((IntConstant) rightExp).getValue());
			}
			return new BinaryGreaterExpression(BoolType.getInstance(), leftExp, rightExp);
		}
		if (leftExp.returnType instanceof StringType && rightExp.returnType instanceof StringType) {
			if (leftExp instanceof StringConstant && rightExp instanceof StringConstant) {
				String lstr = ((StringConstant) leftExp).getValue();
				String rstr = ((StringConstant) rightExp).getValue();
				return new BoolConstant(lstr.compareTo(rstr) > 0);
			}
			return new FunctionCallExpression(
					AST.globalFunctionTable.getFunctionType("__string_greater__"),
					new ArrayList<Expression>() {{
						add(leftExp); add(rightExp);
					}}
			);
			//return new BinaryGreaterExpression(BoolType.getInstance(), leftExp, rightExp);
		}
		throw new CompilerError("Expressions cannot be compared");
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		leftExpression.translateIR(instructionList);
		rightExpression.translateIR(instructionList);

		HASH = "(" + leftExpression.HASH + ">" + rightExpression.HASH + ")";
		operand = IRTranslator.getBuiltOperand(HASH);
		if (operand != null) {
			System.err.println("niubi>");
			return;
		}

		Operand left = leftExpression.operand;
		Operand right = rightExpression.operand;
		if (left == right) {
			operand = new Immediate(0);
			return;
		}
		if (left instanceof Immediate && right instanceof Immediate) {
			if (((Immediate) left).getValue() > ((Immediate) right).getValue()) {
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
			instructionList.add(new CSetInstruction(CSetInstruction.Type.G, operand));
			return;
		}
		if (left instanceof Immediate) {
			instructionList.add(new CompareInstruction(right, left));
			instructionList.add(new CSetInstruction(CSetInstruction.Type.L, operand));
		} else {
			instructionList.add(new CompareInstruction(left, right));
			instructionList.add(new CSetInstruction(CSetInstruction.Type.G, operand));
		}

		IRTranslator.builtOperand.put(HASH, operand);
	}

}
