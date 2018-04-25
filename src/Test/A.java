package Test;


import AST.Type.IntType;

public class A {
	public Integer a;
	public A(int temp) {
		a = new Integer(temp);
	}
	public Integer work() {
		return a;
	}
}
