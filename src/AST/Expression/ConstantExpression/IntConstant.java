package AST.Expression.ConstantExpression;

import AST.Type.BoolType;
import AST.Type.IntType;
import IR.IRTranslator;
import IR.Instruction.Instruction;
import IR.Operand.Immediate;

import java.util.List;

public class IntConstant extends Constant {
	private int value;

	public IntConstant(int value) {
		super(IntType.getInstance());
		this.value = value;
		if (value == 233) {
			++IRTranslator.r233;
		}
	}

	public int getValue() {
		return value;
	}

	@Override
	public boolean constantCompatibleWith(Constant obj) {
		return obj instanceof IntConstant || obj instanceof NullConstant;
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		operand = new Immediate(value);
	}
}
