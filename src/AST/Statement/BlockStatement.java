package AST.Statement;

import AST.Symbol.Scope;
import IR.IRTranslator;
import IR.Instruction.Instruction;

import java.util.ArrayList;
import java.util.List;

public class BlockStatement extends Statement implements Scope {

	private List<Statement> statements;

	public BlockStatement() {
		statements = new ArrayList<>();
	}

	public BlockStatement(List<Statement> statements) {
		this.statements = statements;
	}

	public void addStatement(Statement statement) {
		statements.add(statement);
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		IRTranslator.builtOperand.clear();
		for (Statement statement: statements) {
			statement.translateIR(instructionList);
		}
	}
}
