package IR.Operand;

public class Immediate extends Operand {

	private int value;

	public Immediate(int value) {
		this.value = value;
	}

	public boolean equals(Operand obj) {
		return (obj instanceof Immediate) && value == ((Immediate) obj).getValue();
	}

	public void setValue(int value) {
		this.value = value;
	}

	public int getValue() {
		return value;
	}

	@Override
	public String toString() {
		return "Imm(" + String.valueOf(value) + ")";
	}

}
