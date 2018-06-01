package IR.Instruction;

import IR.Block;
import IR.FunctionIR;
import IR.IRTranslator;
import NASM.PhysicalOperand.SystemRegister;

public class Label extends Instruction {

	private String name;
	public Block blockBelong;

	public Label(String labelName) {
		super();
		FunctionIR who = IRTranslator.who;
		this.name = "@" + who.getName() + "." + ++who.labelID + "." + labelName;
		claimSet();
	}

	@Override
	public void claimSet() {

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
