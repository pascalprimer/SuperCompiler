package NASM.PhysicalOperand;

import IR.Operand.*;
import NASM.NASMTranslator;

public abstract class PhysicalOperand {

	public static PhysicalOperand get(StringBuilder code, Operand operand) {
		if (operand instanceof Immediate) {
			return new PhysicalImmediate(((Immediate) operand).getValue());
		}
		if (operand instanceof StringMemory) {
			return new ConstString(((StringMemory) operand).tag);
		}
		if (operand instanceof VirtualRegister) {
			VirtualRegister tmp = (VirtualRegister) operand;
			if (tmp.sysRegister != null/* && tmp.sysRegister.charAt(0) != '@'*/) {
				return new SystemRegister(tmp.sysRegister);
			} else {
//				if (tmp.sysRegister != null) {
//					return new PhysicalAddress(new SystemRegister(tmp.sysRegister), 0);
//				}
				return new PhysicalAddress(
						new SystemRegister("rbp"),
						NASMTranslator.nowFunctionIR.offsetMap.get(operand).intValue()
				);
			}
		} else { //Address
			Address tmp = (Address) operand;
			if (tmp.getBase().sysRegister != null/* && tmp.getBase().sysRegister.charAt(0) != '@'*/) {
				return new PhysicalAddress(
						new SystemRegister(tmp.getBase().sysRegister),
						tmp.getOffset().getValue()
				);
			} else {
				code.append(NASMTranslator.getInstruction(
						"mov", "rdx", get(code, tmp.getBase()).toString()
				));
				return new PhysicalAddress(
						new SystemRegister("rdx"),
						tmp.getOffset().getValue()
				);
			}
		}
	}
}
