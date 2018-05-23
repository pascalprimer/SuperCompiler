package IR.Instruction;

import IR.Operand.Operand;

public class CSetInstruction extends Instruction {

	public enum Type {
		EQ, L, LE, G, GE, NEQ
	}

	private Type type;
	private Operand target;

	public CSetInstruction(Type type, Operand target) {
		this.type = type;
		this.target = target;
	}

}
