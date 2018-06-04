package IR.Instruction;

import IR.Operand.Address;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;
import IR.RegisterManager;
import NASM.NASMTranslator;
import NASM.PhysicalOperand.PhysicalAddress;
import NASM.PhysicalOperand.PhysicalOperand;
import NASM.PhysicalOperand.SystemRegister;
import Utility.RuntimeError;

public class MoveInstruction extends Instruction {

	public Operand target;
	private Operand source;

	public MoveInstruction(Operand target, Operand source) {
		super();
		if (source == null || target == null) {
			throw new RuntimeError("source && target not null");
		}
		this.source = source;
		this.target = target;
		claimSet();
	}

	public void changeTarget(Operand newTarget) {
		if (target instanceof VirtualRegister) {
			def.remove((VirtualRegister) target);
			((VirtualRegister) target).delLoop(loopNumber);
		}
		if (target instanceof Address) {
			use.remove(((Address) target).getBase());
			((Address) target).getBase().delLoop(loopNumber);
		}
		target = newTarget;
		if (target instanceof VirtualRegister) {
			def.add((VirtualRegister) target);
			((VirtualRegister) target).addLoop(loopNumber);
		}
		if (target instanceof Address) {
			use.add(((Address) target).getBase());
			((Address) target).getBase().addLoop(loopNumber);
		}
	}

	@Override
	public void claimSet() {
		if (target instanceof VirtualRegister) {
			def.add((VirtualRegister) target);
			((VirtualRegister) target).addLoop(loopNumber);
		}
		if (target instanceof Address) {
			use.add(((Address) target).getBase());
			((Address) target).getBase().addLoop(loopNumber);
		}
		if (source instanceof VirtualRegister) {
			use.add((VirtualRegister) source);
			((VirtualRegister) source).addLoop(loopNumber);
		}
		if (source instanceof Address) {
			use.add(((Address) source).getBase());
			((Address) source).getBase().addLoop(loopNumber);
		}
	}

	@Override
	public void loadVirtualRegister() {
		RegisterManager.addVirtualRegister(target);
		RegisterManager.addVirtualRegister(source);
	}

	@Override
	public String translateNASM() {
		StringBuilder code = new StringBuilder();
		PhysicalOperand physicalTarget = PhysicalOperand.get(code, target),
				physicalSource = PhysicalOperand.get(code, source);
		if (physicalSource instanceof PhysicalAddress &&
				physicalTarget instanceof PhysicalAddress) {
			code.append(NASMTranslator.getInstruction(
					"mov", "rcx", physicalSource.toString()
			));code.append(NASMTranslator.getInstruction(
					"mov", physicalTarget.toString(), "rcx"
			));
		} else {
			code.append(NASMTranslator.getInstruction(
					"mov", physicalTarget.toString(), physicalSource.toString()
			));
		}
		return code.toString();
	}

	@Override
	public boolean getPurity() {
		return (target.ifPurity() && source.ifPurity());
	}

	public Operand getTarget() {
		return target;
	}

	public Operand getSource() {
		return source;
	}

	@Override
	public String toString(int indents) {
		return Utility.GetIndents.getIndents(indents) +
				"mov" + "\t" +
				(target == null ? "null" : target.toString()) + "\t" +
				(source == null ? "null" : source.toString()) + "\n";
	}

}
