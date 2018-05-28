package NASM.PhysicalOperand;

public class PhysicalImmediate extends PhysicalOperand {

	public int value;

	public PhysicalImmediate(int value) {
		this.value = value;
	}

	@Override
	public String toString() {
		return String.valueOf(value);
	}
}
