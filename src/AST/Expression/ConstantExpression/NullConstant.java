package AST.Expression.ConstantExpression;

import AST.Type.NullType;
import IR.Instruction.Instruction;
import IR.Operand.Immediate;

import java.util.List;

public class NullConstant extends Constant {
	public NullConstant() {
		super(NullType.getInstance());
	}

	@Override
	public boolean constantCompatibleWith(Constant obj) {
		return true;
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		//fixme
		operand = new Immediate(0);
	}
}
