import java.lang.*;

import AST.Type.IntType;
import Test.*;

public class Main {
	public static void main(String[] args) throws Exception{
		String a = new String("asdfasdf");
		String b = new String("asdfasdf");

		int t = 123;
		int tt = ++(t);
		System.out.println(tt);
	}
}
