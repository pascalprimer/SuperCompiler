package AST.Expression;

import AST.Symbol.Type;
import IR.Instruction.Instruction;
import IR.Operand.Operand;

import java.util.List;

public abstract class Expression {

	private String op;
	private boolean leftValue;
	public Operand operand;
	public Type returnType;

	public String HASH;
	public Expression identical;
	public boolean modifyTag;//not only identifier or binary op

	public Expression(String op, boolean leftValue, Type type) {
		this.op = op;
		this.leftValue = leftValue;
		this.returnType = type;
		this.operand = null;
		this.identical = null;
		HASH = String.valueOf(hashCode());
	}

	public boolean getLeftValue() {
		return leftValue;
	}

	public String getOp() {
		return op;
	}

	public abstract void dfsUseful(boolean useful);

	public abstract void dfsBuiltOperand(boolean ok);

	public abstract boolean getUseful();

	public abstract void translateIR(List<Instruction> instructionList);

	/*public Type getReturnType() {
		return returnType;
	}*/
}
