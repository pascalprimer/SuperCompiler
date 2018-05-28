package IR.Instruction;

import IR.FunctionIR;
import IR.IRTranslator;
import NASM.PhysicalOperand.SystemRegister;

public class Label extends Instruction {

	private String name;

	public Label(String labelName) {
		FunctionIR who = IRTranslator.who;
		this.name = "@" + who.getName() + "." + ++who.labelID + "." + labelName;
	}

	public String getName() {
		return name;
	}

	@Override
	public String toString() {
		return name;
	}

	@Override
	public void loadVirtualRegister() {

	}

	@Override
	public String translateNASM() {
		StringBuilder code = new StringBuilder();
		code.append(name + ":\n");
		return code.toString();
	}

	@Override
	public String toString(int indents) {
		//System.out.println(Utility.GetIndents.getIndents(indents * 3) + name);
		return name + ": " + "\n";
	}
}
