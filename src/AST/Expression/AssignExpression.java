package AST.Expression;

import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Operand.Address;
import IR.Operand.Immediate;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;
import IR.RegisterManager;
import Utility.CompilerError;

import java.util.List;

public class AssignExpression extends Expression {
	private Expression variable, subscript;

	private AssignExpression(Expression variable, Expression subscript) {
		super("=", true, subscript.returnType);
		this.variable = variable;
		this.subscript = subscript;
	}

	public static Expression getExpression(Expression variable, Expression expression) {
		/*System.err.println(variable.returnType.toString()
				+ " ---- " + expression.returnType.toString()
		);*/
		if (variable.getLeftValue() == false) {
			throw new CompilerError("Not left value");
		}
		if (!variable.returnType.compatibleWith(expression.returnType)) {
			throw new CompilerError("Different type when assigning");
		}
		return new AssignExpression(variable, expression);
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		variable.translateIR(instructionList);
		subscript.translateIR(instructionList);
		Operand lvalue = variable.operand,
				rvalue = subscript.operand;
		if (lvalue instanceof Address && rvalue instanceof Address) {
			VirtualRegister tmp = RegisterManager.getVirtualRegister();
			instructionList.add(new MoveInstruction(rvalue, tmp));
			instructionList.add(new MoveInstruction(tmp, lvalue));
		} else {
			instructionList.add(new MoveInstruction(rvalue, lvalue));
		}
		operand = subscript.operand;
	}
}
