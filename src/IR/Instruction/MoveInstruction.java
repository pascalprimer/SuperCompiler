package IR.Instruction;

import IR.Operand.Operand;

public class MoveInstruction extends Instruction {

	private Operand target;
	private Operand source;

	public MoveInstruction(Operand source, Operand target) {
		this.source = source;
		this.target = target;
	}

}
