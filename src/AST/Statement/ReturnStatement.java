package AST.Statement;

import AST.AST;
import AST.Expression.ConstantExpression.VoidConstant;
import AST.Expression.Expression;
import AST.Symbol.Scope;
import AST.Type.FunctionType;
import AST.Type.VoidType;
import IR.IRTranslator;
import IR.Instruction.Instruction;
import IR.Instruction.JumpInstruction;
import IR.Instruction.MoveInstruction;
import IR.Operand.VirtualRegister;
import IR.RegisterManager;
import Utility.CompilerError;

import java.util.List;

public class ReturnStatement extends Statement {

	private Expression returnValue;

	public ReturnStatement(Expression returnValue) {
		Scope scope = AST.symbolTable.getFunctionScope();
		if (returnValue == null) {
			if (((FunctionType) scope).getReturnType() != VoidType.getInstance()) {
				throw new CompilerError("Nothing to return");
			} else {
				this.returnValue = new VoidConstant();
				return;
			}
		}
		if (returnValue.returnType != VoidType.getInstance()
				&& ((FunctionType) scope).getReturnType().compatibleWith(returnValue.returnType)) {
			this.returnValue = returnValue;
		} else {
			throw new CompilerError("Return type not match");
		}
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		if (returnValue != null) {
			returnValue.translateIR(instructionList);
			//fixme    physical reg needed
			VirtualRegister tmp = RegisterManager.getVirtualRegister();
			instructionList.add(new MoveInstruction(returnValue.operand, tmp));
		}
		instructionList.add(new JumpInstruction(JumpInstruction.Type.J, IRTranslator.exitLabel));
	}
}
