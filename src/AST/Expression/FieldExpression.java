package AST.Expression;

import AST.AST;
import AST.Statement.VariableDeclarationStatement;
import AST.Symbol.Symbol;
import AST.Symbol.Type;
import AST.Type.*;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Operand.Address;
import IR.Operand.Immediate;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;
import IR.RegisterManager;
import Test.A;
import Utility.CompilerError;

import java.util.ArrayList;
import java.util.List;

public class FieldExpression extends Expression {

	private Expression field;
	private String memberName;

	private FieldExpression(boolean leftValue, Type returnType, Expression field, String member) {
		super(".", leftValue, returnType);
		this.field = field;
		this.memberName = member;
	}

	public static Expression getExpression(Expression field, String member) {
		if (field.returnType instanceof ClassType) {
			ClassType fieldClass = (ClassType) field.returnType;
			if (fieldClass.getMemberFunction().checkIn(member)) {
				FunctionType who = fieldClass.getMemberFunction().getFunctionType(member);
				return new FieldExpression(false, who, field, member);
			}
			if (fieldClass.getMemberVariable().checkIn(member)) {
				Type memberType = fieldClass.getMemberVariable().getDeclaration(member).getType();
				return new FieldExpression(true, memberType, field, member);
			}
			throw new CompilerError(member + " not exist in class");
		}
		if (field.returnType instanceof StringType) {
			if (member.equals("length")
					|| member.equals("substring")
					|| member.equals("parseInt")
					|| member.equals("ord")) {
				FunctionType func = AST.globalFunctionTable.getFunctionType("__" + member + "__");
				return new FieldExpression(false, func, field, member);
			}
			throw new CompilerError(member + " not exist in String");
		}
		if (field.returnType instanceof ArrayType) {
			if (member.equals("size")) {
				FunctionType func = AST.globalFunctionTable.getFunctionType("__size__");
				return new FieldExpression(false, func, field, member);
			}
			throw new CompilerError(member + " not exist in Array");
		}
		throw new CompilerError(member + " not exist in " + field.returnType.toString());
	}

	public Expression getField() {
		return field;
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		HASH = toString().substring(15);

		if (returnType instanceof  FunctionType) {
			return;
		}
		field.translateIR(instructionList);
		VirtualRegister base;
		if (field.operand instanceof Address) {
			base = RegisterManager.getVirtualRegister();
			instructionList.add(new MoveInstruction(base, field.operand));
		} else {
			base = (VirtualRegister) field.operand;
		}
		operand = new Address(
				base,
				new Immediate(((ClassType) field.returnType).getVariableOffset(memberName)
		));
//		if (memberSymbol.getType() instanceof FunctionType) {
//			return;
//		}
//		VirtualRegister base = RegisterManager.getVirtualRegister();
//		if (field.operand instanceof Address) {
//			instructionList.add(new MoveInstruction(field.operand, base));
//		} else {
//			base = (VirtualRegister) field.operand;
//		}
//		operand = new Address(
//				base,
//				new Immediate(
//						((ClassType) field.returnType).getVariableOffset(
//								memberSymbol.getName()
//						)
//				)
//		);
	}
}
