package IR.Instruction;

import IR.Operand.Operand;
import IR.RegisterManager;
import NASM.NASMTranslator;
import NASM.PhysicalOperand.PhysicalAddress;
import NASM.PhysicalOperand.PhysicalOperand;
import Utility.RuntimeError;

public class MoveInstruction extends Instruction {

	private Operand target;
	private Operand source;

	public MoveInstruction(Operand target, Operand source) {
		if (source == null || target == null) {
			throw new RuntimeError("source && target not null");
		}
		this.source = source;
		this.target = target;
	}

	@Override
	public void loadVirtualRegister() {
		RegisterManager.addVirtualRegister(target);
		RegisterManager.addVirtualRegister(source);
	}

	@Override
	public String translateNASM() {
		StringBuilder code = new StringBuilder();
		PhysicalOperand physicalTarget = PhysicalOperand.get(code, target),
				physicalSource = PhysicalOperand.get(code, source);
		if (physicalSource instanceof PhysicalAddress &&
				physicalTarget instanceof PhysicalAddress) {
			code.append(NASMTranslator.getInstruction(
					"mov", "rcx", physicalSource.toString()
			));code.append(NASMTranslator.getInstruction(
					"mov", physicalTarget.toString(), "rcx"
			));
		} else {
			code.append(NASMTranslator.getInstruction(
					"mov", physicalTarget.toString(), physicalSource.toString()
			));
		}
		return code.toString();
	}

	@Override
	public String toString(int indents) {
		return Utility.GetIndents.getIndents(indents) +
				"mov" + "\t" +
				(target == null ? "null" : target.toString()) + "\t" +
				(source == null ? "null" : source.toString()) + "\n";
	}

}
