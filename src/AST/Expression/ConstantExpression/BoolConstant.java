package AST.Expression.ConstantExpression;

import AST.Type.BoolType;
import IR.IRTranslator;
import IR.Instruction.Instruction;
import IR.Operand.Immediate;

import java.util.List;

public class BoolConstant extends Constant {
	private boolean value;

	public BoolConstant(boolean value) {
		super(BoolType.getInstance());
		this.value = value;
	}

	public boolean getValue() {
		return value;
	}

	@Override
	public boolean constantCompatibleWith(Constant obj) {
		return obj instanceof BoolConstant || obj instanceof NullConstant;
	}

	@Override
	public void dfsBuiltOperand(boolean ok) {
		HASH = String.valueOf(value);
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		if (value) {
			operand = new Immediate(1);
		} else {
			operand = new Immediate(0);
		}
	}
}
