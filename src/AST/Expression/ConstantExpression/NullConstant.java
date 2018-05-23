package AST.Expression.ConstantExpression;

import AST.Type.NullType;
import IR.Instruction.Instruction;

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
	}
}
