package AST.Expression;

import AST.Type.ArrayType;
import AST.Type.IntType;
import IR.Instruction.BinaryInstruction;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Operand.Address;
import IR.Operand.Immediate;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;
import IR.RegisterManager;
import Utility.CompilerError;

import java.lang.reflect.Array;
import java.util.List;

public class ArrayExpression extends Expression {

	private Expression baseExpression, subscriptExpression;

	private ArrayExpression(Expression base, Expression subscript) {
		super("array", base.getLeftValue(), ((ArrayType) base.returnType).prefixArray());
		baseExpression = base;
		subscriptExpression = subscript;
	}

	public static Expression getExpression(Expression base, Expression subscript) {
		if (!(base.returnType instanceof ArrayType)) {
			throw new CompilerError("Not array");
		}
		if (!(subscript.returnType instanceof IntType)) {
			throw new CompilerError("Integer index needed");
		}
		return new ArrayExpression(base, subscript);
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		baseExpression.translateIR(instructionList);
		subscriptExpression.translateIR(instructionList);
		Operand base = baseExpression.operand,
				offset = subscriptExpression.operand;
		VirtualRegister tmp = RegisterManager.getVirtualRegister();
		instructionList.add(new MoveInstruction(base, tmp));
		instructionList.add(
				new BinaryInstruction(
						BinaryInstruction.Operation.SHL,
						offset, new Immediate(1), offset
				)
		);
		operand = new Address(tmp, offset);
	}
}
