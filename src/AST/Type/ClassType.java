package AST.Type;

import AST.Statement.VariableDeclarationStatement;
import AST.Symbol.Scope;
import AST.Symbol.Type;
import Utility.CompilerError;

import java.lang.*;
import java.util.HashMap;
import java.util.Map;

public class ClassType extends Type implements Scope {
	private String className;
	private FunctionTable memberFunction;
	private VariableTable memberVariable;//'this' included
	private FunctionType constructionFunction;
	private Map<String, Integer> offsetMap;
	private int allocateSize;

	public ClassType(String name) {
		className = name;
		memberFunction = new FunctionTable();
		memberVariable = new VariableTable();
		allocateSize = 0;
		constructionFunction = null;
		offsetMap = new HashMap<>();
	}

	public String getName() {
		return className;
	}

	public VariableTable getMemberVariable() {
		return memberVariable;
	}

	public FunctionTable getMemberFunction() {
		return memberFunction;
	}

	public FunctionType getConstructionFunction() {
		return constructionFunction;
	}

	public int getVariableOffset(String name) {
		return offsetMap.get(name).intValue();
	}

	public int getAllocateSize() {
		return allocateSize;
	}

	public void addName(String className) {
		this.className = className;
	}

	public void addFunction(FunctionType member) {
		if (memberVariable.checkIn(member.getName())) {
			throw new CompilerError("Member function and variable share the same name: "
					+ member.getName());
		}
		this.memberFunction.addFunction(member);
	}

	public void addSymbolVariable(VariableDeclarationStatement stat) {
		this.memberVariable.addSymbolDeclaration(stat.getSymbol().getName(), stat);
	}

	public void addVariable(VariableDeclarationStatement stat) {
		if (memberFunction.checkIn(stat.getSymbol().getName())) {
			throw new CompilerError("Member function and variable share the same name: "
					+ stat.getSymbol().getName());
		}
		this.memberVariable.addDeclaration(stat);
		stat.setOffset(allocateSize);
		offsetMap.put(stat.getName(), Integer.valueOf(allocateSize));
		allocateSize += 1;
	}

	public void setConstructionFunction(FunctionType constructionFunction) {
		this.constructionFunction = constructionFunction;
	}

	@Override
	public boolean compatibleWith(Type obj) {
		return obj == NullType.getInstance()
				|| this == obj;
	}

	@Override
	public String toString() {
		String str =  "class(" + className + ")";
//		str = str + "memberFunction: " + memberFunction.toString();
//		if (constructionFunction == null) {
//			str = str + "no construction";
//		} else {
//			str = str + "construct: " + constructionFunction.toString();
//		}
//		str = str + "memberVariable: " + memberVariable.toString();
		return str;
	}
}
