import java.lang.*;

import AST.Type.IntType;

public class Main {
	public static void main(String[] args) throws Exception{
		IntType a = new IntType();
		System.out.println(a == IntType.getInstance());
	}
}
