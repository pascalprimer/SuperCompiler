package AST.Type;

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

	public FunctionType(Type returnType, String functionName,
	                    ClassType classScope, BlockStatement body) {
		this.returnType = returnType;
		this.functionName = functionName;
		parameterList = new ArrayList<Symbol>();
		this.classScope = classScope;
		this.body = body;
	}

	public void addReturnType(Type returnType) {
		this.returnType = returnType;
	}

	public void addName(String functionName) {
		this.functionName = functionName;
	}

	public void addParameter(Symbol obj) {
		this.parameterList.add(obj);
	}

	public void addClassScope(ClassType classScope) {
		this.classScope = classScope;
	}

	public String getName() {
		return functionName;
	}

	public String getFullName() {
		if (classScope == null) {
			return functionName;
		}
		return classScope.getName() + "." + functionName;
	}

	@Override
	public boolean compatibleWith(Type obj) {
		return this == obj;
	}
}
