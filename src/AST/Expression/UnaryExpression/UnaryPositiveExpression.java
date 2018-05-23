package AST.Expression.UnaryExpression;

import AST.Expression.Expression;
import AST.Type.IntType;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Instruction.UnaryInstruction;
import IR.RegisterManager;
import Utility.CompilerError;

import java.util.List;

public class UnaryPositiveExpression extends UnaryExpression {

	private UnaryPositiveExpression(Expression exp) {
		super("+", false, IntType.getInstance(), exp);
	}

	public static Expression getExpression(Expression exp) {
		if (exp.returnType instanceof IntType) {
			return exp;
		}
		throw new CompilerError("Not integer");
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		System.err.println("unary positive??? Are you kidding me?");
	}

}