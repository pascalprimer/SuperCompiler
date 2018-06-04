package AST.Statement;

import AST.Symbol.Scope;
import IR.Instruction.Instruction;

import java.util.List;

public abstract class Statement{

	public abstract void translateIR(List<Instruction> instructionList);

	public abstract void dfsBuiltOperand(boolean ok);

}
