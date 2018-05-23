package IR.Instruction;

public class Label extends Instruction {

	private String name;

	public Label(String labelName) {
		this.name = labelName;
	}

	public String getName() {
		return name;
	}
}
