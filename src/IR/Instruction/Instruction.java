package IR.Instruction;

import AST.AST;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;

import java.util.HashSet;

public abstract class Instruction {

	//public Operand returnValue;

	public int loopNumber;
	public HashSet<VirtualRegister> def, use, liveIn, liveOut;

	public Instruction() {
		loopNumber = AST.loopCnt;
		def = new HashSet<>();
		use = new HashSet<>();
		liveIn = new HashSet<>();
		liveOut = new HashSet<>();
	}

	public abstract String translateNASM();

	public abstract void loadVirtualRegister();

	public abstract void claimSet();

	public abstract String toString(int indents);

}
