package IR.Operand;

public class VirtualRegister extends Operand {

	private String name;
	public String sysRegister;
	public boolean isGlobal;

	public VirtualRegister(String name) {
		this.name = name;
		isGlobal = false;
	}

	@Override
	public String toString() {
		return name + "(" + sysRegister + ")";
	}
}
