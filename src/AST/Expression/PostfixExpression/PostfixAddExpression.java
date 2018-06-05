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
import Utility.RuntimeError;

import java.util.List;

//A++

public class PostfixAddExpression extends Expression {

	private Expression expression;

	private PostfixAddExpression(Expression exp) {
		super("++", false, IntType.getInstance());
		expression = exp;
		modifyTag = true;
	}

	public static Expression getExpression(Expression exp) {
		if (exp.returnType instanceof IntType && exp.getLeftValue()) {
			return new PostfixAddExpression(exp);
		}
		throw new CompilerError("Not left value or integer");
	}

	@Override
	public boolean getUseful() {
		throw new RuntimeError("postfix Expression getUseful");
	}

	@Override
	public void dfsUseful(boolean useful) {
		expression.dfsUseful(true);
	}

	@Override
	public void dfsBuiltOperand(boolean ok) {

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
