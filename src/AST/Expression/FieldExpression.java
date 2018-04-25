package AST.Expression;

import AST.AST;
import AST.Statement.VariableDeclarationStatement;
import AST.Symbol.Symbol;
import AST.Symbol.Type;
import AST.Type.ClassType;
import AST.Type.FunctionType;
import AST.Type.IntType;
import AST.Type.StringType;
import Utility.CompilerError;

import java.util.ArrayList;
import java.util.List;

public class FieldExpression extends Expression {

	private Expression field;
	private Symbol memberSymbol;

	private FieldExpression(boolean leftValue, Type type, Expression field, Symbol member) {
		super(".", leftValue, type);
		this.field = field;
		this.memberSymbol = member;
	}

	public static Expression getExpression(Expression field, String member) {
		if (field.returnType instanceof ClassType) {
			ClassType fieldClass = (ClassType) field.returnType;
//			if (fieldClass.getConstructionFunction().getName().equals(member)) {
//				return MemberExpression.getExpression(fieldClass, fieldClass.getConstructionFunction());
//			}
			if (fieldClass.getMemberFunction().checkIn(member)) {
				FunctionType who = fieldClass.getMemberFunction().getFunctionType(member);
				return new FieldExpression(false, who.getReturnType(), field,
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

}
