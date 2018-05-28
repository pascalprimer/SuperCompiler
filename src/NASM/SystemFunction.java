package NASM;

import NASM.PhysicalOperand.SystemRegister;

import java.io.BufferedReader;
import java.io.FileReader;

public class SystemFunction {

	public static String loadSystemFunction() {
		StringBuilder code = new StringBuilder();
		try {
			FileReader reader = new FileReader("systemFunction.asm");
			BufferedReader br = new BufferedReader(reader);
			String str = null;
			while ((str = br.readLine()) != null) {
				code.append(str + "\n");
			}
		} catch (Throwable throwable) {
			System.out.println("no system function file!!!");
		}
		//System.out.println(code.toString());
		//load__size__();
		return code.toString();
	}

}
