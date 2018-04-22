import java.lang.*;

import AST.Type.IntType;
import Test.*;

public class Main {
	public static void main(String[] args) throws Exception{
		A a = new A();
		B b = new B();
		C c = new C();
		System.out.println(a == a);

		a = c;
		System.out.println(a == b);
		System.out.println((B)a == b);
	}
}
