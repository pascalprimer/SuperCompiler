package IR.Instruction;

import IR.Operand.Operand;
import IR.RegisterManager;
import NASM.NASMTranslator;
import NASM.PhysicalOperand.PhysicalOperand;

import java.util.ArrayList;
import java.util.List;

public class UnaryInstruction extends Instruction {

	public enum Type {
		ADD, SUB, NOT, NEG, REV
	}

	private List<String> opList = new ArrayList<String>(){{
		add("");
		add("");
		add("");
		add("neg");
		add("not");
	}};

	private Type type;
	private Operand target;

	public UnaryInstruction(Type type, Operand target) {
		this.type = type;
		this.target = target;
	}

	@Override
	public void loadVirtualRegister() {
		RegisterManager.addVirtualRegister(target);
	}

	@Override
	public String translateNASM() {
		StringBuilder code = new StringBuilder();
		PhysicalOperand physicalTarget = PhysicalOperand.get(code, target);
		switch (type) {
			case ADD:
				code.append(NASMTranslator.getInstruction(
						"add", physicalTarget.toString(), String.valueOf(1)
				));
				break;
			case SUB:
				code.append(NASMTranslator.getInstruction(
						"sub", physicalTarget.toString(), String.valueOf(1)
				));
				break;
			case NOT:
				code.append(NASMTranslator.getInstruction(
						"xor", physicalTarget.toString(), String.valueOf(1)
				));
				break;
			default:
				code.append(NASMTranslator.getInstruction(
						opList.get(type.ordinal()), physicalTarget.toString()
				));
				break;
		}
		return code.toString();
	}

	@Override
	public String toString(int indents) {
		return Utility.GetIndents.getIndents(indents) +
				type.toString().toLowerCase() + "\t" +
				(target == null ? "null" : target.toString()) + "\n";
	}

}