package IR.Instruction;

import IR.Operand.Operand;

public class BinaryInstruction extends Instruction {

	public enum Operation {
		ADD, SUB, MUL, DIV, MOD, SHL, SHR, XOR, AND, OR
	};

	private Operand target, leftOper, rightOper;
	private Operation op;

	public BinaryInstruction(Operation op, Operand leftOper, Operand rightOper, Operand target) {
		this.op = op;
		this.target = target;
		this.leftOper = leftOper;
		this.rightOper = rightOper;
	}

}
