package AST.Expression.PostfixExpression;

import AST.Expression.Expression;
import AST.Expression.IdentifierExpression;
import AST.Symbol.Symbol;
import AST.Type.IntType;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Instruction.UnaryInstruction;
import IR.Operand.VirtualRegister;
import IR.RegisterManager;
import Utility.CompilerError;

import java.util.List;

//A++

public class PostfixAddExpression extends Expression {

	private Expression expression;

	private PostfixAddExpression(Expression exp) {
		super("++", false, IntType.getInstance());
		expression = exp;
	}

	public static Expression getExpression(Expression exp) {
		if (exp.returnType instanceof IntType && exp.getLeftValue()) {
			return new PostfixAddExpression(exp);
		}
		throw new CompilerError("Not left value or integer");
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		if (expression instanceof IdentifierExpression) {
			Symbol symbol = ((IdentifierExpression) expression).getSymbol();
			symbol.number++;
		}

		expression.translateIR(instructionList);
		operand = RegisterManager.getVirtualRegister();
		instructionList.add(new MoveInstruction(operand, expression.operand));
		//fixme???!!!
		instructionList.add(new UnaryInstruction(
				UnaryInstruction.Type.ADD, expression.operand
		));
//		VirtualRegister tmp = RegisterManager.getVirtualRegister();
//		instructionList.add(new UnaryInstruction(
//				UnaryInstruction.Type.ADD, operand, tmp
//		));
//		instructionList.add(new MoveInstruction(tmp, expression.operand));
	}

}
