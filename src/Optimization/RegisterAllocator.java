package Optimization;

import IR.Block;
import IR.FunctionIR;
import IR.Instruction.FunctionCallInstruction;
import IR.Instruction.Instruction;
import IR.Operand.VirtualRegister;
import Utility.RuntimeError;

import java.util.*;

public class RegisterAllocator {

	private static final long INF = 9000000000000000000L;
	private static final long K = 11;
	private static final List<String> leafOrder = new ArrayList<String>(){{
		add("rsi");
		add("rdi");
		add("r8");
		add("r9");
		add("r10");
		add("r11");
		add("rbx");
		add("r12");
		add("r13");
		add("r14");
		add("r15");
	}};
	private static final List<String> innerOrder = new ArrayList<String>(){{
		add("rsi");
		add("rbx");
		add("rdi");
		add("r12");
		add("r8");
		add("r13");
		add("r9");
		add("r14");
		add("r10");
		add("r15");
		add("r11");
	}};
	public static FunctionIR nowFunc;
	public static Map<VirtualRegister, Set<VirtualRegister>> conflictEdge;
	private static Stack<VirtualRegister> mustStack;
	private static List<VirtualRegister> allocateList;
	private static Map<VirtualRegister, String> registerMap;

	private static boolean tryColoring(Map<VirtualRegister, String> registerMap,
	                                   VirtualRegister register, String color) {
//		System.out.println(register + " " + conflictEdge.get(register).size());
//		if (register.getName().length() == 1) {
//			System.out.println(0);
//		}
		for (VirtualRegister neighbour: conflictEdge.get(register)) {
//			System.out.println(register + " " + neighbour);
//			System.out.println(registerMap.containsKey(neighbour));
//			System.out.println(registerMap.get(neighbour));
			if (registerMap.containsKey(neighbour)
					&& registerMap.get(neighbour).equals(color)) {
//				System.out.println(register + "   gg");
				return false;
			}
		}
		registerMap.put(register, color);
		register.sysRegister = color;
		return true;
	}

	public static void LinearAllocator() {
		nowFunc = LiveAnalysis.nowFunc;
		conflictEdge = new HashMap<>(LiveAnalysis.conflictEdge);
		mustStack = new Stack<>();
		allocateList = new ArrayList<>();
		registerMap = new HashMap<>();

		for (VirtualRegister register: conflictEdge.keySet()) {
			if (register.sysRegister != null) {
				mustStack.push(register);
			} else {
				allocateList.add(register);
			}
		}

		boolean isLeaf = true;
		for (Block block: nowFunc.blockList) {
			for (Instruction instruction: block.instructionList) {
				if (instruction instanceof FunctionCallInstruction) {
					isLeaf = false;
					break;
				}
			}
		}

		List<String> myOrder = isLeaf ? leafOrder : innerOrder;
		while (mustStack.size() > 0) {
			VirtualRegister now = mustStack.pop();
			if (!tryColoring(registerMap, now, now.sysRegister)) {
				throw new RuntimeError("beforehand register allocation conflicts!!!");
			}
		}

		while (allocateList.size() > 0) {
			long maxWeight = 0;
			int id = -1;
			VirtualRegister who = null;
			for (int j = 0; j < allocateList.size(); ++j) {
				VirtualRegister now = allocateList.get(j);
				if (conflictEdge.get(now).size() < K &&
						id == -1 || now.getWeight() > maxWeight) {
					id = j;
					maxWeight = now.getWeight();
					who = now;
				}
			}
			if (who == null) {
				for (int j = 0; j < allocateList.size(); ++j) {
					VirtualRegister now = allocateList.get(j);
					if (id == -1 || now.getWeight() > maxWeight) {
						id = j;
						maxWeight = now.getWeight();
						who = now;
					}
				}
			}
			for (String systemReg : myOrder) {
				if (tryColoring(registerMap, who, systemReg)) {
					break;
				}
			}
			allocateList.remove(id);
		}

		nowFunc.systemRegisterMap = registerMap;
	}

}
