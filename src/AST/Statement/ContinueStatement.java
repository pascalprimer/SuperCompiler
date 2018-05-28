package AST.Statement;

import AST.AST;
import AST.Symbol.Scope;
import IR.IRTranslator;
import IR.Instruction.Instruction;
import IR.Instruction.JumpInstruction;
import Utility.CompilerError;

import java.util.List;

public class ContinueStatement extends Statement {

	public ContinueStatement() {
		if (AST.symbolTable.haveIteration()) {

		} else {
			throw new CompilerError("No iteration to continue");
		}
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		instructionList.add(new JumpInstruction(JumpInstruction.Type.JMP, IRTranslator.loopContinue));
	}
}
