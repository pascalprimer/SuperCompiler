package IR;

import IR.Instruction.Instruction;

import java.util.ArrayList;
import java.util.List;

public class Block {

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
}
