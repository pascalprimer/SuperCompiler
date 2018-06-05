//both while and for

package AST.Statement;

import AST.AST;
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
	Label iterLabel, bodyLabel, conLabel, exitLabel;

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
	public void dfsUseful() {
		if (initialization != null) {
			initialization.dfsUseful(false);
		}
		if (termination != null ) {
			termination.dfsUseful(false);
		}
		if (operation != null) {
			operation.dfsUseful(false);
		}
		if (statement != null) {
			statement.dfsUseful();
		}
	}

	@Override
	public void dfsBuiltOperand(boolean ok) {
		IRTranslator.builtOperand.clear();
		if (statement != null) {
			statement.dfsBuiltOperand(ok);
		}
		IRTranslator.builtOperand.clear();
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
//System.out.println("iteration");
		/*
			*init
			J ForCon
		ForBody:
			body
			J ForIter
		ForIter:
			*iter
			J Forcon
		ForCon:
			condition
			mv condition.operand tmp
			cmp tmp 1
			JE ForIter
			JNE ForBody
		ForExit:
		*/
		++AST.loopCnt;

		iterLabel = new Label("ForIter");
		bodyLabel = new Label("ForBody");
		conLabel = new Label("ForCon");
		exitLabel = new Label("ForExit");
		IRTranslator.loopContinue = iterLabel;
		IRTranslator.loopExit = exitLabel;

		//JMP
		if (initialization != null) {
			initialization.translateIR(instructionList);
		}
		if (termination == null) {
			instructionList.add(new JumpInstruction(JumpInstruction.Type.JMP, bodyLabel));
		} else {
			instructionList.add(new JumpInstruction(JumpInstruction.Type.JMP, conLabel));
		}

		//Body
		instructionList.add(bodyLabel);
		statement.translateIR(instructionList);
		instructionList.add(new JumpInstruction(JumpInstruction.Type.JMP, iterLabel));

		//Iterate
		instructionList.add(iterLabel);
		if (operation != null) {
			operation.translateIR(instructionList);
		}
		if (termination == null) {
			instructionList.add(new JumpInstruction(JumpInstruction.Type.JMP, bodyLabel));
		} else {
			instructionList.add(new JumpInstruction(JumpInstruction.Type.JMP, conLabel));
		}

		//Condition
		if (termination != null) {
			instructionList.add(conLabel);
			termination.translateIR(instructionList);
			VirtualRegister tmp = RegisterManager.getVirtualRegister();
			instructionList.add(new MoveInstruction(tmp, termination.operand));
			instructionList.add(new CompareInstruction(tmp, new Immediate(1)));
			instructionList.add(new JumpInstruction(JumpInstruction.Type.JE, bodyLabel));
			instructionList.add(new JumpInstruction(JumpInstruction.Type.JMP, exitLabel));
		}

		instructionList.add(exitLabel);

		--AST.loopCnt;
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
