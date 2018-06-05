package IR.Instruction;

import IR.Block;
import IR.FunctionIR;
import IR.IRTranslator;
import NASM.PhysicalOperand.SystemRegister;

public class Label extends Instruction {

	private String name;
	private String smallName;
	public Block blockBelong;
	public Label forLink;

	public Label(FunctionIR who, String labelName) {
		super();
		this.smallName = labelName;
		this.name = "@" + who.getName() + "." + ++who.labelID + "." + labelName;
		forLink = null;
		claimSet();
	}

	@Override
	public boolean noMem() {
		return true;
	}

	public Label(String labelName) {
		super();
		FunctionIR who = IRTranslator.who;
		this.smallName = labelName;
		this.name = "@" + who.getName() + "." + ++who.labelID + "." + labelName;
		claimSet();
	}

	@Override
	public void claimSet() {

	}

	public String getName() {
		return name;
	}

	public String getSmallName() {
		return smallName;
	}

	@Override
	public String toString() {
		return name;
	}

	@Override
	public void loadVirtualRegister() {

	}

	@Override
	public boolean getPurity() {
		return true;
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
