package IR.Instruction;

import NASM.NASMTranslator;

public class JumpInstruction extends Instruction {

	public enum Type {
		JE, JNE, JL, JG, JLE, JGE, JMP
	}

	private Type type;
	private Label label;

	public JumpInstruction(Type type, Label label) {
		super();
		this.type = type;
		this.label = label;
		claimSet();
	}

	@Override
	public boolean noMem() {
		return true;
	}

	@Override
	public void claimSet() {

	}

	@Override
	public void loadVirtualRegister() {

	}

	@Override
	public String translateNASM() {
		StringBuilder code = new StringBuilder();
		//if (type.equals(Type.JMP)) {
		code.append(NASMTranslator.getInstruction(
				"\t" + type.toString().toLowerCase() + "\t" + label.getName()
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

	public Label getLabel() {
		return label;
	}

	@Override
	public boolean getPurity() {
		return true;
	}

	public Type getType() {
		return type;
	}

}
