package AST.Type;

import AST.Expression.Expression;
import AST.Statement.BlockStatement;
import AST.Symbol.Scope;
import AST.Symbol.Symbol;
import AST.Symbol.Type;

import java.util.ArrayList;
import java.util.List;

public class FunctionType extends Type implements Scope {
	private Type returnType;
	private String functionName;
	private List<Symbol> parameterList;
	private ClassType classScope;
	private BlockStatement body;
	private boolean isConstruction;

	public FunctionType(String functionName) {
		this.functionName = functionName;
		this.parameterList = new ArrayList<>();
		isConstruction = false;
	}

	public FunctionType(Type returnType, String functionName,
	                    ClassType classScope) {
		this.returnType = returnType;
		this.functionName = functionName;
		parameterList = new ArrayList<>();
		this.classScope = classScope;
		this.body = null;
	}

	public void setConstruction() {
		isConstruction = true;
		returnType = VoidType.getInstance();
	}

	public void setReturnType(Type returnType) {
		this.returnType = returnType;
	}

	public void setName(String functionName) {
		this.functionName = functionName;
	}

	public void addParameter(Symbol obj) {
		this.parameterList.add(obj);
	}

	public void addParameter(int idx, Symbol obj) {
		this.parameterList.add(idx, obj);
	}

	public void setParameterList(List<Symbol> parameterList) {
		this.parameterList = parameterList;
	}

	public void setClassScope(ClassType classScope) {
		this.classScope = classScope;
	}

	public void setBody(BlockStatement body) {
		this.body = body;
	}

	public Type getReturnType() {
		return returnType;
	}

	public boolean isConstruction() {
		return isConstruction;
	}

	public ClassType getClassScope() {
		return classScope;
	}

	public List<Symbol> getParameterList() {
		return parameterList;
	}

	public BlockStatement getBody() {
		return body;
	}

	public String getName() {
		if (functionName == null) {
			return "";
		}
		return new String(functionName);
	}

	public String getFullName() {
		if (classScope == null) {
			return getName();
		}
		return classScope.getName() + "." + getName();
	}

	@Override
	public boolean compatibleWith(Type obj) {
		return this == obj;
	}

	@Override
	public String toString() {
		return getFullName();
//		String str;
//		if (functionName != null) {
//			str = new String(functionName);
//		} else {
//			str = "";
//		}
//
//		str = str + "(";
////System.out.println(getFullName() + " " + String.valueOf(returnType instanceof ClassType));
//		return str;
		//str = str + "return: " + returnType.toString();
//		if (classScope == null) {
//			str = str + "; global func! ";
//		} else {
//			str = str + "; classScope: " + classScope.getName();
//		}
		//return str;
		/*str = str + "; para:";
		for (Symbol u: parameterList) {
			str = str + " " + u.toString();
		}
		str = str + ")";
		return str;*/
	}
}
