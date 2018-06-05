package AST.Statement;

import AST.Expression.Expression;
import AST.Symbol.Symbol;
import AST.Symbol.Type;
import AST.Type.ClassType;
import AST.Type.NullType;
import AST.Type.VoidType;
import IR.*;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Operand.Address;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;
import Utility.CompilerError;

import java.util.List;

public class VariableDeclarationStatement extends Statement {

	private ClassType classBelong;
	private String name;
	private Type type;
	private Symbol symbol;
	private Expression declarationExpression;
	private int offset;

	public VariableDeclarationStatement(Symbol symbol) {
		if (symbol.getType() == NullType.getInstance()
				|| symbol.getType() == VoidType.getInstance()) {
			throw new CompilerError("null, void cannot be declared");
		}
		//System.err.println("variable dec: " + symbol.getName());
		this.symbol = symbol;
		this.type = symbol.getType();
		this.name = symbol.getName();
		this.type = symbol.getClassBelong();
		this.offset = 0;
		this.declarationExpression = null;
	}

	@Override
	public void dfsUseful() {
		if (declarationExpression != null) {
			declarationExpression.dfsUseful(false);
		}
	}

	@Override
	public void dfsBuiltOperand(boolean ok) {
		if (declarationExpression != null) {
			declarationExpression.dfsBuiltOperand(ok);
		}
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		if (declarationExpression == null) {
			return;
		}
		declarationExpression.translateIR(instructionList);
		Operand source = declarationExpression.operand;
		//System.out.println("source is empty??" + String.valueOf(source == null));
		Operand target = symbol.operand;
		if (source instanceof Address && target instanceof Address) {
			VirtualRegister tmp = RegisterManager.getVirtualRegister();
			instructionList.add(new MoveInstruction(tmp, source));
			instructionList.add(new MoveInstruction(target, tmp));
		} else {
			instructionList.add(new MoveInstruction(target, source));
		}
	}

//	public VariableDeclarationStatement(Symbol symbol, Expression declarationExpression) {
//		if (!symbol.getType().compatibleWith(declarationExpression.returnType)) {
//			throw new CompilerError("Type not match when variable declaring");
//		}
//		this.symbol = symbol;
//		this.declarationExpression = declarationExpression;
//	}

	public void setDeclarationExpression(Expression declarationExpression) {
		//System.err.println(symbol.toString() + " to -> " + declarationExpression.returnType.toString());
		if (!symbol.getType().compatibleWith(declarationExpression.returnType)) {
			throw new CompilerError("Type not match when variable declaring");
		}
		this.declarationExpression = declarationExpression;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public Symbol getSymbol() {
		return symbol;
	}

	public Type getType() {
		return symbol.getType();
	}

	public String getName() {
		return name;
	}

	public Expression getDeclarationExpression() {
		return declarationExpression;
	}

}
