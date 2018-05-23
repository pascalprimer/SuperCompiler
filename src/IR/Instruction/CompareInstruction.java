package IR.Instruction;

import IR.Operand.Operand;

public class CompareInstruction extends Instruction {

	private Operand leftOper, rightOper;

	public CompareInstruction(Operand leftOper, Operand rightOper) {
		this.leftOper = leftOper;
		this.rightOper = rightOper;
	}

}
