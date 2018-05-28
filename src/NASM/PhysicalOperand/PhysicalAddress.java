package NASM.PhysicalOperand;

public class PhysicalAddress extends PhysicalOperand {

	public SystemRegister base;
	public int offset;

	public PhysicalAddress(SystemRegister base, int offset) {
		this.base = base;
		this.offset = offset;
	}

	@Override
	public String toString() {
		if (offset > 0) {
			return "qword[" + base.name + "+" + String.valueOf(offset * 8) + "]";
		}
		if (offset == 0) {
			return "qword[" + base.name + "]";
		} else {
			return "qword[" + base.name + "-" + String.valueOf(-offset * 8) + "]";
		}
	}
}
