package AST.Expression;

import AST.AST;
import AST.Statement.VariableDeclarationStatement;
import AST.Symbol.Symbol;
import AST.Symbol.Type;
import AST.Type.ClassType;
import AST.Type.FunctionType;
import AST.Type.IntType;
import AST.Type.StringType;
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
	private Symbol memberSymbol;

	private FieldExpression(boolean leftValue, Type returnType, Expression field, Symbol member) {
		super(".", leftValue, returnType);
		this.field = field;
		this.memberSymbol = member;
	}

	public Symbol getMemberSymbol() {
		return memberSymbol;
	}

	public static Expression getExpression(Expression field, String member) {
		if (field.returnType instanceof ClassType) {
			ClassType fieldClass = (ClassType) field.returnType;
//			if (fieldClass.getConstructionFunction().getName().equals(member)) {
//				return MemberExpression.getExpression(fieldClass, fieldClass.getConstructionFunction());
//			}
			if (fieldClass.getMemberFunction().checkIn(member)) {
				FunctionType who = fieldClass.getMemberFunction().getFunctionType(member);
				return new FieldExpression(false, who, field,
						new Symbol(member, who, fieldClass, false, true));
			}
			if (fieldClass.getMemberVariable().checkIn(member)) {
				Symbol who = new Symbol(member,
						fieldClass.getMemberVariable().getDeclaration(member).getType(),
						fieldClass, false, true);
				return new FieldExpression(true, who.getType(), field, who);
			}
			throw new CompilerError(member + " not exist in class");
		}
		return new BaseTypeFieldExpression(field, member);
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		field.translateIR(instructionList);
		if (memberSymbol.getType() instanceof FunctionType) {
			return;
		}
		VirtualRegister base = RegisterManager.getVirtualRegister();
		if (field.operand instanceof Address) {
			instructionList.add(new MoveInstruction(field.operand, base));
		} else {
			base = (VirtualRegister) field.operand;
		}
		operand = new Address(
				base,
				new Immediate(
						((ClassType) memberSymbol.getType()).getVariableOffset(
								memberSymbol.getName()
						)
				)
		);
	}
}
