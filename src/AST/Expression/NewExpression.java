package AST.Expression;

import AST.Symbol.Type;
import AST.Type.ArrayType;
import AST.Type.ClassType;
import Utility.CompilerError;

import java.util.List;

public class NewExpression extends Expression {

	private Type newType;
	private List<Expression> list;

	private NewExpression(Type newType, List<Expression> list, Type returnType) {
		super("new", false, returnType);
		this.newType = newType;
		this.list = list;
	}

	public static Expression getExpression(Type type, List<Expression> list) {
		if (!(type instanceof ClassType) && list.size() == 0) {
			throw new CompilerError("Base class cannot new");
		}
		if (list.size() > 0) {
			if (type instanceof ArrayType) {
				throw new CompilerError("Maybe new int[][12] is wrong???!!!???");
			}
			if (list.get(0) == null) {
				throw new CompilerError("new type[][exp] is wrong");
			}
			boolean nullExist = true;
			for (Expression exp: list) {
				if (exp == null) {
					nullExist = false;
				} else {
					if (!nullExist) {
						throw new CompilerError("You are dancing: new type[12][][12]");
					}
				}
			}
			return new NewExpression(type, list, new ArrayType(type, list.size()));
		} else {
			return new NewExpression(type, list, type);
		}
	}

}
