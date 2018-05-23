package IR.Instruction;

public class JumpInstruction extends Instruction {

	public enum Type {
		JE, JNE, JL, JG, JLE, JGE, JMP, J
	}

	private Type type;
	private Label label;

	public JumpInstruction(Type type, Label label) {
		this.type = type;
		this.label = label;
	}

}
