package AST.Statement;

import AST.Expression.Expression;
import AST.Symbol.Scope;
import IR.Instruction.Instruction;

import java.util.List;

public class ExpressionStatement extends Statement {

	private Expression expression;

	public ExpressionStatement(Expression expression) {
		this.expression = expression;
	}

	@Override
	public void dfsUseful() {
		expression.dfsUseful(false);
	}

	@Override
	public void dfsBuiltOperand(boolean ok) {
		if (expression != null) {
			expression.dfsBuiltOperand(ok);
		}
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		if (expression != null) {
			expression.translateIR(instructionList);
		}
	}

	public void setExpression(Expression expression) {
		this.expression = expression;
	}

}
