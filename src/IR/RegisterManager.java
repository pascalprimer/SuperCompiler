package IR;

import IR.Operand.Address;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;
import NASM.NASMTranslator;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class RegisterManager {

	private static final long loopR = 5;
	public static long[] loopCoefficient;
	private static int allocateNumber;
	private static int offset;
	public static Set<String> usedRegister;
	public static Set<String> callerRegisterName = new HashSet<String>() {{
		//add("rdx");
		//add("rcx");
		add("rsi");
		add("rdi");
		add("r8");
		add("r9");
		add("r10");
		add("r11");
	}};
	public static Set<String> calleeRegisterName = new HashSet<String>() {{
		add("rbx");
		add("r12");
		add("r13");
		add("r14");
		add("r15");
	}};
	public static List<String> parameterRegisterName = new ArrayList<String>() {{
		add("rdi");
		add("rsi");
		add("rdx");
		add("rcx");
		add("r8");
		add("r9");
	}};
	//public static Map<>

	public static void initialize() {
		allocateNumber = 0;
		loopCoefficient = new long [15];
		loopCoefficient[0] = 1;
		for (int i = 1; i < loopCoefficient.length; ++i) {
			loopCoefficient[i] = loopCoefficient[i - 1] * loopR;
		}
	}

	public static VirtualRegister getVirtualRegister() {
		return new VirtualRegister("t" + String.valueOf(++allocateNumber));
	}

	public static void prepareLoading() {
		offset = 0;
		usedRegister = new HashSet<>();
	}

	private static void addOffsetMap(VirtualRegister virtualRegister) {
		if (!NASMTranslator.nowFunctionIR.offsetMap.containsKey(virtualRegister)
				&& !NASMTranslator.nowFunctionIR.systemRegisterMap.containsKey(virtualRegister)) {
			NASMTranslator.nowFunctionIR.offsetMap.put(virtualRegister, Integer.valueOf(++offset));
		}
	}

	private static void addUsedRegister(VirtualRegister virtualRegister) {
		if (NASMTranslator.nowFunctionIR.systemRegisterMap.containsKey(virtualRegister)) {
			usedRegister.add(NASMTranslator.nowFunctionIR.systemRegisterMap.get(virtualRegister));
		}
	}

	private static void addVirtualRegister(VirtualRegister virtualRegister) {
		addOffsetMap(virtualRegister);
		addUsedRegister(virtualRegister);
	}

	public static void addVirtualRegister(Operand operand) {
		if (operand instanceof VirtualRegister) {
			addVirtualRegister((VirtualRegister) operand);
		}
		if (operand instanceof Address){
			addVirtualRegister(((Address) operand).getBase());
		}
	}

}
