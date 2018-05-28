package IR.Instruction;

import NASM.NASMTranslator;

public class JumpInstruction extends Instruction {

	public enum Type {
		JE, JNE, JL, JG, JLE, JGE, JMP
	}

	private Type type;
	private Label label;

	public JumpInstruction(Type type, Label label) {
		this.type = type;
		this.label = label;
	}

	@Override
	public void loadVirtualRegister() {

	}

	@Override
	public String translateNASM() {
		StringBuilder code = new StringBuilder();
		//if (type.equals(Type.JMP)) {
		code.append(NASMTranslator.getInstruction(
				type.toString().toLowerCase() + "\t" + label.getName()
		));
		//}
		return code.toString();
	}

	@Override
	public String toString(int indents) {
		return Utility.GetIndents.getIndents(indents) +
				type.toString().toLowerCase() + "\t" +
				(label == null ? "null": label.getName()) + "\n";
	}

}
