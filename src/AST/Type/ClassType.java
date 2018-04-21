package AST.Type;

import AST.Statement.VariableDeclarationStatement;
import AST.Symbol.Type;

import java.lang.*;

public class ClassType extends Type {
	private String className;
	private FunctionTable memberFunction;
	private VariableTable memberVariable;
	private FunctionType constructionFunction;

	public ClassType() {
		memberFunction = new FunctionTable();
		memberVariable = new VariableTable();
	}

	public String getName() {
		return className;
	}

	public void addName(String className) {
		this.className = className;
	}

	public void addFunction(FunctionType member) {
		this.memberFunction.addFunction(member);
	}

	public void addVariable(String name, VariableDeclarationStatement stat) {
		this.memberVariable.addMember(name, stat);
	}

	public void addConstruction(FunctionType constructionFunction) {
		this.constructionFunction = constructionFunction;
	}

	@Override
	public boolean compatibleWith(Type obj) {
		return this == obj;
	}
}
