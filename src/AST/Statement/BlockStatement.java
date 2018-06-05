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

	public void addStatement(int idx, Statement statement) {
		statements.add(idx, statement);
	}

	@Override
	public void dfsUseful() {
		for (Statement statement: statements) {
			statement.dfsUseful();
		}
	}

	@Override
	public void dfsBuiltOperand(boolean ok) {
		for (Statement statement: statements) {
			statement.dfsBuiltOperand(ok);
		}
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		IRTranslator.builtOperand.clear();
		for (Statement statement: statements) {
			statement.translateIR(instructionList);
		}
	}
}
