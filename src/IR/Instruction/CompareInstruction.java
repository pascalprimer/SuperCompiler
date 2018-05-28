package IR.Instruction;

import IR.Operand.Address;
import IR.Operand.Operand;
import IR.RegisterManager;
import NASM.NASMTranslator;
import NASM.PhysicalOperand.PhysicalAddress;
import NASM.PhysicalOperand.PhysicalOperand;
import Utility.RuntimeError;

public class CompareInstruction extends Instruction {

	private Operand leftOper, rightOper;

	public CompareInstruction(Operand leftOper, Operand rightOper) {
		if (leftOper instanceof Address && rightOper instanceof Address) {
		throw new RuntimeError("leftOper & rightOper both address");
	}
		this.leftOper = leftOper;
		this.rightOper = rightOper;
	}

	@Override
	public void loadVirtualRegister() {
		RegisterManager.addVirtualRegister(leftOper);
		RegisterManager.addVirtualRegister(rightOper);
	}

	@Override
	public String translateNASM() {
		StringBuilder code = new StringBuilder();

		PhysicalOperand physicalLeft = PhysicalOperand.get(code, leftOper),
				physicalRight = PhysicalOperand.get(code, rightOper);
		if (physicalLeft instanceof PhysicalAddress &&
				physicalRight instanceof PhysicalAddress) {
			code.append(NASMTranslator.getInstruction(
					"mov", "rcx", physicalLeft.toString()
			));
			code.append(NASMTranslator.getInstruction(
					"cmp", "rcx", physicalRight.toString()
			));
		} else {
			code.append(NASMTranslator.getInstruction(
					"cmp", physicalLeft.toString(), physicalRight.toString()
			));
		}

		return code.toString();
	}

	@Override
	public String toString(int indents) {
		return Utility.GetIndents.getIndents(indents) +
				"cmp" + "\t" +
				(leftOper == null ? "null" : leftOper.toString()) + "\t" +
				(rightOper == null ? "null" : rightOper.toString()) + "\n";
	}

}
