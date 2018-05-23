package AST.Expression.ConstantExpression;

import AST.Type.VoidType;
import IR.Instruction.Instruction;

import java.util.List;

public class VoidConstant extends Constant {

	public VoidConstant() {
		super(VoidType.getInstance());
	}

	@Override
	public boolean constantCompatibleWith(Constant obj) {
		return false;
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {

	}
}
