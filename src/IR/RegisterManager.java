package IR;

import IR.Operand.VirtualRegister;

public class RegisterManager {

	private static int allocateNumber;

	public static void initialize() {
		allocateNumber = 0;
	}

	public static VirtualRegister getVirtualRegister() {
		return new VirtualRegister("t" + String.valueOf(++allocateNumber));
	}

}
