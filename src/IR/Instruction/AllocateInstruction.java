package IR.Instruction;

import IR.Operand.Address;
import IR.Operand.Immediate;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;
import IR.RegisterManager;
import NASM.NASMTranslator;
import NASM.PhysicalOperand.PhysicalOperand;

import java.util.HashSet;

public class AllocateInstruction extends Instruction {

	private VirtualRegister base;
	private Operand allocateSize;

	public AllocateInstruction(VirtualRegister base, int allocateSize) {
		super();
		this.base = base;
		this.allocateSize = new Immediate(allocateSize);
		claimSet();
	}

	public AllocateInstruction(VirtualRegister base, Operand allocateSize) {
		super();
		this.base = base;
		this.allocateSize = allocateSize;
		claimSet();
	}

	@Override
	public boolean noMem() {
		return !(allocateSize instanceof Address);
	}

	@Override
	public void claimSet() {
		def.add(base);
		base.addLoop(loopNumber);
		if (allocateSize instanceof VirtualRegister) {
			use.add((VirtualRegister) allocateSize);
			((VirtualRegister) allocateSize).addLoop(loopNumber);
		}
		if (allocateSize instanceof Address) {
			use.add(((Address) allocateSize).getBase());
			((Address) allocateSize).getBase().addMem();
			((Address) allocateSize).getBase().addLoop(loopNumber);
		}
	}

	@Override
	public void loadVirtualRegister() {
		RegisterManager.addVirtualRegister(base);
		RegisterManager.addVirtualRegister(allocateSize);
	}

	@Override
	public String translateNASM() {

		StringBuilder code = new StringBuilder();

//System.out.println("now offset: " + String.valueOf(NASMTranslator.rspOffset));
//System.out.println(NASMTranslator.nowFunctionIR.callerRegisters);
		code.append(NASMTranslator.saveCallerRegister(NASMTranslator.nowFunctionIR.callerRegisters));
//System.out.println("now offset: " + String.valueOf(NASMTranslator.rspOffset));
		int rsp_delta = 0;
		if ((NASMTranslator.rspOffset + rsp_delta) % 2 == 1) {
			++rsp_delta;
		}
		if (rsp_delta > 0) {
			code.append(NASMTranslator.getInstruction(
					"sub", "rsp", String.valueOf(rsp_delta << 3)
			));
			NASMTranslator.rspOffset += rsp_delta;
		}

		PhysicalOperand physicalBase = PhysicalOperand.get(code, base),
				physicalSize = PhysicalOperand.get(code, allocateSize);
		code.append(NASMTranslator.getInstruction("mov", "rdi", physicalSize.toString()));
		//code.append(NASMTranslator.getInstruction("shl", "rdi", String.valueOf(3)));
		code.append(NASMTranslator.getInstruction("call", "malloc"));

		if (rsp_delta > 0) {
			code.append(NASMTranslator.getInstruction(
					"add", "rsp", String.valueOf(rsp_delta << 3)
			));
			NASMTranslator.rspOffset -= rsp_delta;
		}

		code.append(NASMTranslator.restoreCallerRegister(NASMTranslator.nowFunctionIR.callerRegisters));

		code.append(NASMTranslator.getInstruction("mov", physicalBase.toString(), "rax"));

		return code.toString();
	}

	@Override
	public boolean getPurity() {
		return false;
	}

	public VirtualRegister getMyBase() {
		return base;
	}

	public Operand getAllocateSize() {
		return allocateSize;
	}

	@Override
	public String toString(int indents) {
		return Utility.GetIndents.getIndents(indents) +
				(base == null ? "null" : base.toString()) +
				" = alloc(1 * " + (allocateSize == null ? "null" : allocateSize.toString()) + ")\n";
	}

}
