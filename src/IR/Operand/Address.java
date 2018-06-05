package IR.Operand;

public class Address extends Operand {

	private VirtualRegister base;
//fixme!  operand or immediate???
	private Immediate offset;

//	public Address(VirtualRegister base) {
//		this.base = base;
//	}

	public Address(VirtualRegister base, Immediate offset) {
		this.base = base;
		this.offset = offset;
	}

	@Override
	public boolean memoryRelated() {
		return true;
	}

	public VirtualRegister getBase() {
		return base;
	}

	public Immediate getOffset() {
		return offset;
	}

	@Override
	public String toString() {
		return "[" + (base == null ? "null" : base.toString()) + " + 8 * " + offset.getValue() + "]";
	}

	@Override
	public boolean ifPurity() {
		return false;
	}
}
