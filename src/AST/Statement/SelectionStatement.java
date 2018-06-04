package AST.Statement;

import AST.Expression.Expression;
import AST.Symbol.Scope;
import AST.Type.BoolType;
import IR.IRTranslator;
import IR.Instruction.*;
import IR.Operand.Immediate;
import IR.Operand.VirtualRegister;
import IR.RegisterManager;
import Utility.CompilerError;

import java.util.List;

public class SelectionStatement extends Statement implements Scope {

	private Expression condition;
	private Statement thenStatement, elseStatement;

	public SelectionStatement() {
		condition = null;
		thenStatement = null;
		elseStatement = null;
	}

	public SelectionStatement(Expression condition,
	                          Statement thenStatement,
	                          Statement elseStatement) {
		if (!(condition.returnType instanceof BoolType)) {
			throw new CompilerError("Condition in if clause must be boolean");
		}
		this.condition = condition;
		this.thenStatement = thenStatement;
		this.elseStatement = elseStatement;
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		IRTranslator.builtOperand.clear();
		/*
			condition
			mov condition.operand tmp
			cmp tmp 1
			JNE IfFalse
			JE IfTrue
		IfTrue
			thenClause
			J IfExit
		IfFalse:
			*elseClause
			J IfExit
		IfExit:
		 */
		Label falseLabel = new Label("IfFalse");
		Label trueLabel = new Label("IfTrue");
		Label exitLabel = new Label("IfExit");

		condition.translateIR(instructionList);
		VirtualRegister con = RegisterManager.getVirtualRegister();
		instructionList.add(new MoveInstruction(con, condition.operand));
		instructionList.add(new CompareInstruction(con, new Immediate(1)));
		instructionList.add(new JumpInstruction(JumpInstruction.Type.JE, trueLabel));
		instructionList.add(new JumpInstruction(JumpInstruction.Type.JMP, falseLabel));

		instructionList.add(trueLabel);
		thenStatement.translateIR(instructionList);

		IRTranslator.builtOperand.clear();

		instructionList.add(new JumpInstruction(JumpInstruction.Type.JMP, exitLabel));
		instructionList.add(falseLabel);
		if (elseStatement != null) {
			elseStatement.translateIR(instructionList);
			instructionList.add(new JumpInstruction(JumpInstruction.Type.JMP, exitLabel));
		}
		instructionList.add(exitLabel);
	}

	public Expression getCondition() {
		return condition;
	}

	public Statement getElseStatement() {
		return elseStatement;
	}

	public Statement getThenStatement() {
		return thenStatement;
	}

	public void setCondition(Expression condition) {
		if (!(condition.returnType instanceof BoolType)) {
			throw new CompilerError("Condition in if clause must be boolean");
		}
		this.condition = condition;
	}

	public void setElseStatement(Statement elseStatement) {
		this.elseStatement = elseStatement;
	}

	public void setThenStatement(Statement thenStatement) {
		this.thenStatement = thenStatement;
	}
}
