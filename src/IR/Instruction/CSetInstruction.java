package IR.Instruction;

import IR.Operand.Operand;
import IR.RegisterManager;
import NASM.NASMTranslator;
import NASM.PhysicalOperand.PhysicalOperand;

public class CSetInstruction extends Instruction {

	public enum Type {
		E, L, LE, G, GE, NE
	}

	private Type type;
	private Operand target;

	public CSetInstruction(Type type, Operand target) {
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
		code.append(NASMTranslator.getInstruction("mov", "rax", "0"));
		code.append(NASMTranslator.getInstruction("set" + type.toString().toLowerCase(), "al"));
		code.append(NASMTranslator.getInstruction("mov", physicalTarget.toString(), "rax"));
		return code.toString();
	}

	@Override
	public String toString(int indents) {
		return Utility.GetIndents.getIndents(indents) +
				"set" + type.toString().toLowerCase() + "\t" +
				(target == null ? "null" : target.toString()) + "\n";
	}

}
