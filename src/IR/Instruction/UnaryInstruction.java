package IR.Instruction;

import IR.Operand.Operand;

public class UnaryInstruction extends Instruction {

	public enum Type {
		ADD, SUB, NOT, NEG, REV
	};

	private Type type;
	private Operand target;
	private Operand source;

	public UnaryInstruction(Type type, Operand source, Operand target) {
		this.type = type;
		this.source = source;
		this.target = target;
	}

}
