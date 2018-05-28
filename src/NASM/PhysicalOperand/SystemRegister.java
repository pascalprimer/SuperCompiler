package NASM.PhysicalOperand;

public class SystemRegister extends PhysicalOperand {

	public String name;

	public SystemRegister(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return name;
	}
}
