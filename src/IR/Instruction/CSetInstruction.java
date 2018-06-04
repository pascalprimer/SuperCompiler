package IR.Instruction;

import IR.Operand.Address;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;
import IR.RegisterManager;
import NASM.NASMTranslator;
import NASM.PhysicalOperand.PhysicalOperand;

import java.util.HashMap;
import java.util.Map;

public class CSetInstruction extends Instruction {

	public enum Type {
		E, L, LE, G, GE, NE
	}

	static private Map<String, String> lowest8Reg = new HashMap<String, String>() {{
		put("rax", "al");
		put("rcx", "cl");
		put("rdx", "dl");
		put("rbx", "bl");
		put("rsp", "spl");
		put("rbp", "bpl");
		put("rsi", "sil");
		put("rdi", "dil");
		put("r8", "r8b");
		put("r9", "r9b");
		put("r10", "r10b");
		put("r11", "r11b");
		put("r12", "r12b");
		put("r13", "r13b");
		put("r14", "r14b");
		put("r15", "r15b");
	}};

	private Type type;
	private Operand target;

	public CSetInstruction(Type type, Operand target) {
		super();
		this.type = type;
		this.target = target;
		claimSet();
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
	}

	@Override
	public void loadVirtualRegister() {
		RegisterManager.addVirtualRegister(target);
	}

	@Override
	public String translateNASM() {
		StringBuilder code = new StringBuilder();
		PhysicalOperand physicalTarget = PhysicalOperand.get(code, target);
		if (NASMTranslator.nowFunctionIR.offsetMap.containsKey(target)) {
			code.append(NASMTranslator.getInstruction("mov", "rax", "0"));
			code.append(NASMTranslator.getInstruction("set" + type.toString().toLowerCase(), "al"));
			code.append(NASMTranslator.getInstruction("mov", physicalTarget.toString(), "rax"));
		} else {
			code.append(NASMTranslator.getInstruction("mov", physicalTarget.toString(), "0"));
			code.append(NASMTranslator.getInstruction(
					"set" + type.toString().toLowerCase(),
					lowest8Reg.get(physicalTarget.toString())
			));
		}
		return code.toString();
	}

	@Override
	public boolean getPurity() {
		if (target.ifPurity()) {
			return true;
		}
		return false;
	}

	public Type getType() {
		return type;
	}

	public Operand getTarget() {
		return target;
	}

	@Override
	public String toString(int indents) {
		return Utility.GetIndents.getIndents(indents) +
				"set" + type.toString().toLowerCase() + "\t" +
				(target == null ? "null" : target.toString()) + "\n";
	}

}
