package AST.Statement;

import AST.AST;
import AST.Symbol.Scope;
import IR.IRTranslator;
import IR.Instruction.Instruction;
import IR.Instruction.JumpInstruction;
import Utility.CompilerError;
import javafx.util.Pair;

import java.util.List;

public class BreakStatement extends Statement {

	IterationStatement iterationStatement;

	public BreakStatement() {
		Pair<Boolean, IterationStatement> nowIteration = AST.symbolTable.getIteration();
		if (nowIteration.getKey().booleanValue()) {
			iterationStatement = nowIteration.getValue();
		} else {
			throw new CompilerError("No iteration to break");
		}
	}

	@Override
	public void dfsBuiltOperand(boolean ok) {

	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		//System.err.println(IRTranslator.loopExit.toString());
		IRTranslator.builtOperand.clear();
		instructionList.add(new JumpInstruction(
				JumpInstruction.Type.JMP,
				iterationStatement.exitLabel
		));
	}

}
