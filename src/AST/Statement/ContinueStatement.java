package AST.Statement;

import AST.AST;
import AST.Symbol.Scope;
import IR.IRTranslator;
import IR.Instruction.Instruction;
import IR.Instruction.JumpInstruction;
import Utility.CompilerError;
import javafx.util.Pair;

import java.util.List;

public class ContinueStatement extends Statement {

	IterationStatement iterationStatement;

	public ContinueStatement() {
		Pair<Boolean, IterationStatement> nowIteration = AST.symbolTable.getIteration();
		if (nowIteration.getKey().booleanValue()) {
			iterationStatement = nowIteration.getValue();
		} else {
			throw new CompilerError("No iteration to continue");
		}
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		instructionList.add(new JumpInstruction(
				JumpInstruction.Type.JMP,
				iterationStatement.iterLabel
		));
	}
}
