package Test;


import AST.Type.IntType;

public class A {
	public void oper() {
		IntType a = new IntType();
		System.out.println(a == IntType.getInstance());
	}
}
