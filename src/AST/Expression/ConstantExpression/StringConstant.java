package AST.Expression.ConstantExpression;

import AST.Type.StringType;
import IR.IRTranslator;
import IR.Instruction.Instruction;
import IR.Operand.StringMemory;

import java.util.List;

public class StringConstant extends Constant {
	private String value;

	public StringConstant(String value) {
		super(StringType.getInstance());
		//System.out.print(value + "\n");
		value = value.substring(1, value.length() - 1);
		//System.out.print(value + "\n");
		this.value = value;
	}

	public String getValue() {
		return value;
	}

	@Override
	public boolean constantCompatibleWith(Constant obj) {
		return obj instanceof StringConstant || obj instanceof NullConstant;
	}

	@Override
	public void dfsBuiltOperand(boolean ok) {

	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		operand = IRTranslator.getStringOperand(value);
	}
}
