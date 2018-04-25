package AST.Expression;

import AST.Symbol.Symbol;
import AST.Type.ArrayType;
import AST.Type.FunctionType;
import AST.Type.IntType;
import AST.Type.StringType;
import Utility.CompilerError;

import java.util.List;

public class FunctionCallExpression extends Expression {

	private Expression function;
	private List<Expression> parameter;

	public FunctionCallExpression(Expression function, List<Expression> parameter) {
		super("", true, function.returnType);
		this.function = function;
		this.parameter = parameter;
	}

	private static Expression getFromBaseExpression(BaseTypeFieldExpression function, List<Expression> para) {
		Expression expression = function.expression;
		String member = function.member;
		if (expression.returnType == StringType.getInstance()) {
			if (member.equals("length")) {
				if (para.size() == 0) {
					return new FunctionCallExpression(
							IdentifierExpression.getExpression("__length__"), para
					);
				}
				throw new CompilerError("Parameters not match in string.length()");
			}
			if (member.equals("substring")) {
				if (para.size() == 2
						&& para.get(0).returnType instanceof IntType
						&& para.get(1).returnType instanceof IntType) {
					return new FunctionCallExpression(
							IdentifierExpression.getExpression("__substring__"), para
					);
				}
				throw new CompilerError("Parameters not match in string.substring(int, int)");
			}
			if (member.equals("parseInt")) {
				if (para.size() == 0) {
					return new FunctionCallExpression(
							IdentifierExpression.getExpression("__parseInt__"), para
					);
				}
				throw new CompilerError("Parameters not match in string.parseInt()");
			}
			if (member.equals("ord")){
				if (para.size() == 1 && para.get(0).returnType instanceof IntType) {
					return new FunctionCallExpression(
							IdentifierExpression.getExpression("__ord__"), para
					);
				}
				throw new CompilerError("Parameters not match in string.ord(int)");
			}
			throw new CompilerError(member + " not exist on string");
		}
		if (expression.returnType instanceof ArrayType) {
			if (member.equals("size")) {
				if (para.size() == 0) {
					return new FunctionCallExpression(
							IdentifierExpression.getExpression("__size__"), para
					);
				}
				throw new CompilerError("Parameters not match in array.size()");
			}
			throw new CompilerError(member + " not exist on array");
		}
		throw new CompilerError(member + " not found");
	}

	public static Expression getExpression(Expression function, List<Expression> para) {
		if (function instanceof BaseTypeFieldExpression) {
			return getFromBaseExpression((BaseTypeFieldExpression) function, para);
		}
		if (!(function.returnType instanceof FunctionType)) {
			throw new CompilerError("Not a function");
		}
		List<Symbol> fpara = ((FunctionType) function.returnType).getParameterList();
		int thisExist = 0;
		if (fpara.get(0).getName().equals("this")) {
			thisExist = 1;
		}
		if (para.size() + thisExist != fpara.size()) {
			throw new CompilerError("Parameter numbers don't match when function call");
		}
		for (int i = 0; i < para.size(); ++i) {
			if (fpara.get(i + thisExist).getType().compatibleWith(para.get(i).returnType)) {
				throw new CompilerError("Parameter types don't match when function call");
			}
		}
		return new FunctionCallExpression(function, para);
	}

}
