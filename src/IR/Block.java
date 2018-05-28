package IR;

import IR.Instruction.Instruction;

import java.util.ArrayList;
import java.util.List;

public class Block {

	int id;
	private String name;
	private FunctionIR functionIRBelong;
	private Block front, next;
	public List<Instruction> instructionList;

	public Block(String name, FunctionIR functionIRBelong) {
		this.name = name;
		this.functionIRBelong = functionIRBelong;
		instructionList = new ArrayList<>();
		front = next = null;
	}

	public void addInstruction(Instruction instruction) {
		instructionList.add(instruction);
	}

	public void setFront(Block front) {
		this.front = front;
	}

	public void setNext(Block next) {
		this.next = next;
	}

	public Block getFront() {
		return front;
	}

	public Block getNext() {
		return next;
	}

	public FunctionIR getFunctionIRBelong() {
		return functionIRBelong;
	}

	public String toString(int indents) {
		StringBuilder str = new StringBuilder();
		//str.append(Utility.GetIndents.getIndents(indents) + "block " + String.valueOf(id) + "\n");
		for (Instruction instruction: instructionList) {
			str.append(Utility.GetIndents.getIndents(indents) + instruction.toString(indents));
		}
		return str.toString();
	}

}
