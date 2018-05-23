package IR.Instruction;

import IR.Operand.Immediate;
import IR.Operand.Operand;

public class AllocateInstruction extends Instruction {

	private Operand base;
	private Operand allocateSize;

	public AllocateInstruction(Operand base, int allocateSize) {
		this.base = base;
		this.allocateSize = new Immediate(allocateSize);
	}

	public AllocateInstruction(Operand base, Operand allocateSize) {
		this.base = base;
		this.allocateSize = allocateSize;
	}

}
