//both while and for

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

public class IterationStatement extends Statement implements Scope {

	private Expression initialization, termination, operation;
	private Statement statement;

	public IterationStatement() {
		initialization = termination = operation = null;
		statement = null;
	}

	public IterationStatement(Expression init, Expression term, Expression op, Statement stt) {
		if (!(term.returnType instanceof BoolType)) {
			throw new CompilerError("Termination must be boolean");
		}
		initialization = init;
		termination = term;
		operation = op;
		statement = stt;
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		/*
			*init
			J ForCon
		ForIter:
			*iter
			J Forcon
		ForBody:
			body
			J ForIter
		ForCon:
			condition
			mv condition.operand tmp
			cmp tmp 1
			JE ForIter
			JNE ForBody
		ForExit:
		*/
		Label iterLabel = new Label("ForIter");
		Label bodyLabel = new Label("ForBody");
		Label conLabel = new Label("ForCon");
		Label exitLabel = new Label("ForExit");
		IRTranslator.loopContinue = iterLabel;
		IRTranslator.loopExit = exitLabel;

		if (initialization != null) {
			initialization.translateIR(instructionList);
		}
		instructionList.add(new JumpInstruction(JumpInstruction.Type.J, conLabel));

		instructionList.add(iterLabel);
		if (operation != null) {
			operation.translateIR(instructionList);
		}
		instructionList.add(new JumpInstruction(JumpInstruction.Type.J, conLabel));

		instructionList.add(bodyLabel);
		statement.translateIR(instructionList);
		instructionList.add(new JumpInstruction(JumpInstruction.Type.J, iterLabel));

		instructionList.add(conLabel);
		termination.translateIR(instructionList);
		VirtualRegister tmp = RegisterManager.getVirtualRegister();
		instructionList.add(new MoveInstruction(termination.operand, tmp));
		instructionList.add(new CompareInstruction(tmp, new Immediate(1)));
		instructionList.add(new JumpInstruction(JumpInstruction.Type.JE, bodyLabel));
		instructionList.add(new JumpInstruction(JumpInstruction.Type.JNE, exitLabel));

		instructionList.add(exitLabel);
	}

	public void setInitialization(Expression initialization) {
		this.initialization = initialization;
	}

	public void setOperation(Expression operation) {
		this.operation = operation;
	}

	public void setStatement(Statement statement) {
		this.statement = statement;
	}

	public void setTermination(Expression termination) {
		if (!(termination.returnType instanceof BoolType)) {
			throw new CompilerError("Termination in for () must be boolean");
		}
		this.termination = termination;
	}

//	public Statement getStatement() {
//		return statement;
//	}
//
//	public Expression getInitialization() {
//		return initialization;
//	}
//
//	public Expression getOperation() {
//		return operation;
//	}
//
//	public Expression getTermination() {
//		return termination;
//	}

}
