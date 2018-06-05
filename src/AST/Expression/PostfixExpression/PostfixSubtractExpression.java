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

public class PostfixSubtractExpression extends Expression {

	private Expression expression;

	private PostfixSubtractExpression(Expression exp) {
		super("--", false, IntType.getInstance());
		expression = exp;
		modifyTag = true;
	}

	public static Expression getExpression(Expression exp) {
		if (exp.returnType instanceof IntType && exp.getLeftValue()) {
			return new PostfixSubtractExpression(exp);
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
				UnaryInstruction.Type.SUB, expression.operand
		));
//		VirtualRegister tmp = RegisterManager.getVirtualRegister();
//		instructionList.add(new UnaryInstruction(
//				UnaryInstruction.Type.SUB, operand, tmp
//		));
//		instructionList.add(new MoveInstruction(expression.operand, tmp));
	}

}
