package IR.Instruction;

import IR.Operand.Immediate;
import IR.Operand.Operand;
import IR.RegisterManager;
import NASM.NASMTranslator;
import NASM.PhysicalOperand.PhysicalOperand;

public class AllocateInstruction extends Instruction {

	private Operand base;
	private Operand allocateSize;

	public AllocateInstruction(Operand base, int allocateSize) {
		this.base = base;
		this.allocateSize = new Immediate(allocateSize);
	}

	public AllocateInstruction(Operand base, Operand allocateSize) {
		this.base = base;
		this.allocateSize = allocateSize;
	}

	@Override
	public void loadVirtualRegister() {
		RegisterManager.addVirtualRegister(base);
		RegisterManager.addVirtualRegister(allocateSize);
	}

	@Override
	public String translateNASM() {

		StringBuilder code = new StringBuilder();

		code.append(NASMTranslator.saveCallerRegister(NASMTranslator.nowFunctionIR.callerRegisters));

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
		code.append(NASMTranslator.getInstruction("mov", physicalBase.toString(), "rax"));

		if (rsp_delta > 0) {
			code.append(NASMTranslator.getInstruction(
					"add", "rsp", String.valueOf(rsp_delta << 3)
			));
			NASMTranslator.rspOffset -= rsp_delta;
		}

		code.append(NASMTranslator.restoreCallerRegister(NASMTranslator.nowFunctionIR.callerRegisters));

		return code.toString();
	}

	@Override
	public String toString(int indents) {
		return Utility.GetIndents.getIndents(indents) +
				(base == null ? "null" : base.toString()) +
				" = alloc(1 * " + (allocateSize == null ? "null" : allocateSize.toString()) + ")\n";
	}

}
