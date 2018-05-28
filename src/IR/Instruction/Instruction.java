package IR.Instruction;

import IR.Operand.Operand;

public abstract class Instruction {

	//public Operand returnValue;

	public abstract String translateNASM();

	public abstract void loadVirtualRegister();

	public abstract String toString(int indents);

}
