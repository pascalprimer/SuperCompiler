package AST.Symbol;

import AST.AST;
import AST.Type.BoolType;
import AST.Type.ClassType;
import AST.Type.IntType;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;

import java.lang.*;
import java.util.HashSet;

public class Symbol {
	private String name;
	private Type type;
	private ClassType classBelong;
	private boolean isglobal;
	private boolean built;
	public Operand operand;

	public String HASH;
	public int number;

	public boolean useful;
	//public boolean isUseless;

	public Symbol(String name, Type type, ClassType classBelong, boolean isglobal, boolean built) {
		this.name = name;
		this.type = type;
		this.classBelong = classBelong;
		this.isglobal = isglobal;
		this.built = built;
		operand = new VirtualRegister(name);

		number = 0;
		if (type instanceof IntType || type instanceof BoolType) {
			HASH = name;
		} else {
			HASH = String.valueOf(AST.allocateNumber);
		}
		useful = false;
		//System.out.println(name + " " + HASH);
		//setUseless();
		//System.out.println(this);
	}

	public void setOperand(Operand operand) {
		this.operand = operand;
	}

	public Type getType() {
		return type;
	}

	public String getName() {
		return name;
	}

	public void setBuilt() {
		built = true;
	}

	public ClassType getClassBelong() {
		return classBelong;
	}

//	public Operand getRegister() {
//		return register;
//	}


	/*public void setUseless() {
		isUseless = name.equals("");
	}*/

	public String toString() {
		return "Symbol(" + name
				+ " ," + type.toString()
				+ " class: " + (classBelong != null ? classBelong.getName() : "null") + ")";
	}
}
