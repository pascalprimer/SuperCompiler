package AST.Symbol;

import AST.Type.ClassType;

import java.lang.*;

public class Symbol {
	private String name;
	private Type type;
	private ClassType classBelong;
	private boolean isglobal;

	public Symbol(String name, Type type, ClassType classBelong, boolean isglobal) {
		this.name = name;
		this.type = type;
		this.classBelong = classBelong;
		this.isglobal = isglobal;
	}
}
