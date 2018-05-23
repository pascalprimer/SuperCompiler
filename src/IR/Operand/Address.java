package IR.Operand;

public class Address extends Operand {

	private VirtualRegister base;
//fixme!  operand or immediate???
	private Operand offset;

//	public Address(VirtualRegister base) {
//		this.base = base;
//	}

	public Address(VirtualRegister base, Operand offset) {
		this.base = base;
		this.offset = offset;
	}

}
