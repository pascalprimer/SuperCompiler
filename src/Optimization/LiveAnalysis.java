package Optimization;

import AST.Type.FunctionType;
import IR.Block;
import IR.FunctionIR;
import IR.Instruction.Instruction;
import IR.Instruction.JumpInstruction;
import IR.Instruction.MoveInstruction;
import IR.Operand.VirtualRegister;
import Utility.RuntimeError;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class LiveAnalysis {

//	public class Weight {
//		//public Map<Integer, Integer> refLoopNumber;
//		public int refNumber;
//		//public int expressionNumber;
//		VirtualRegister who;
//		public int defNumber;
//
//		public Weight() {
//			refLoopNumber = new HashMap<>();
//		}
//
//		//fixme!!!   exprience formula
//		public int getWeight() {
//			return loop
//		}
//
//	}

	public static FunctionIR nowFunc;
	public static Map<VirtualRegister, Set<VirtualRegister>> conflictEdge;
	//public static Set<VirtualRegister> weightMap;


	public static void GlobalAnalysis() {

	}

	public static void FunctionAnalysis(FunctionIR functionIR) {
		nowFunc = functionIR;
		conflictEdge = new HashMap<>();
		//weightMap = new HashSet<>();
		solveBlocks();
		for (Block block: nowFunc.blockList) {
			solveInstructions(block);
		}
	}

	public static void solveBlocks() {
		Block last = null;
		for (Block block: nowFunc.blockList) {
			if (last != null) {
				last.blockOut.add(block);
				block.blockIn.add(last);
			}
			last = block;
			Set<VirtualRegister> nowAssigned = new HashSet<>();
			for (Instruction instruction: block.instructionList) {
				for (VirtualRegister register: instruction.use) {
					//System.out.println("use: " + register + " " + isRegister(register));
					if (!isRegister(register)) {
						continue;
					}
					if (!nowAssigned.contains(register)) {
						block.use.add(register);
					}
					if (!conflictEdge.containsKey(register)) {
						conflictEdge.put(register, new HashSet<>());
					}
				}
				for (VirtualRegister register: instruction.def) {
//					System.out.println("def: " + register);
					if (isRegister(register) && !conflictEdge.containsKey(register)) {
						conflictEdge.put(register, new HashSet<>());
					}
				}
				for (VirtualRegister register: instruction.def) {
					block.def.add(register);
					nowAssigned.add(register);
				}

				if (instruction instanceof JumpInstruction) {
					Block target = ((JumpInstruction) instruction).getLabel().blockBelong;
					if (block != target) {
						if (target == null) {
							System.out.println("null occur");
							System.out.println(instruction.toString(0));
						}
						block.blockOut.add(target);
						target.blockIn.add(block);
					}
				}
			}
			block.liveIn = new HashSet<>(block.use);
		}
		//System.out.println(conflictEdge.keySet());

		boolean converge = false;
		while (!converge) {
			converge = true;
			for (Block block: nowFunc.blockList) {
				if (calcBlockIn(block)) {
					converge = false;
				}
				if (calcBlockOut(block)) {
					converge = false;
				}
				//converge |= !calcBlockOut(block);
			}
		}

//		for (Block block: nowFunc.blockList) {
//			System.out.println("\n" + block.getName());
//			System.out.println("use: " + block.use);
//			System.out.println("def: " + block.def);
//			System.out.println("liveIn: " + block.liveIn);
//			System.out.println("liveOut: " + block.liveOut);
//		}
	}

	private static void solveInstructions(Block block) {
		if (block.instructionList.size() > 0 && block.id < nowFunc.blockList.size() - 1) {
			SetUnion(block.instructionList.get(block.instructionList.size() - 1).liveOut,
					nowFunc.blockList.get(block.id + 1).liveIn
			);
		}
		for (int i = block.instructionList.size() - 1; i >= 0; --i) {
			Instruction instruction = block.instructionList.get(i);
			if (instruction instanceof JumpInstruction) {
				Block where = ((JumpInstruction) instruction).getLabel().blockBelong;
				SetUnion(instruction.liveOut, where.liveIn);
				if (((JumpInstruction) instruction).getType().equals(JumpInstruction.Type.JMP)) {
					//nothing to do
				} else {
					if (i < block.instructionList.size() - 1) {
						SetUnion(instruction.liveOut, block.instructionList.get(i + 1).liveIn);
					}
				}
			} else {
				if (i < block.instructionList.size() - 1) {
					SetUnion(instruction.liveOut, block.instructionList.get(i + 1).liveIn);
				}
			}

			instruction.liveIn = new HashSet<>(instruction.use);
			for (VirtualRegister register: instruction.liveOut) {
				if (!instruction.def.contains(register)) {
					instruction.liveIn.add(register);
				}
			}

//System.out.println("\n" + instruction.toString(0));
//System.out.println("use: " + instruction.use);
//System.out.println("def: " + instruction.def);
//System.out.println("liveIn: " + instruction.liveIn);
//System.out.println("liveOut: " + instruction.liveOut);


			for (VirtualRegister register: instruction.liveOut) {
				if (!(instruction instanceof MoveInstruction) || !instruction.def.contains(register)) {
					for (VirtualRegister u: instruction.def) {
						if (isRegister(register)) {
							addConflictEdge(u, register);
						}
					}
				}
			}
		}
	}

	private static void addConflictEdge(VirtualRegister u, VirtualRegister v) {
System.out.println(u + " --------- " + v);
System.out.println(conflictEdge.containsKey(u) + " " + conflictEdge.containsKey(v));
		if (u == v) {
			return;
		}
		conflictEdge.get(u).add(v);
		conflictEdge.get(v).add(u);
	}

	//true if needed to allocate
	private static boolean isRegister(VirtualRegister register) {
//System.out.println(register + " " + register.isGlobal + " " + nowFunc.offsetMap.containsKey(register));
		if (register.isGlobal || nowFunc.offsetMap.containsKey(register)) {
			return false;
		}
		return true;
	}

	//true if not converge
	private static boolean calcBlockIn(Block block) {
		boolean ret = false;
		for (VirtualRegister register: block.liveOut) {
			//System.out.println(block.getName() + " -> " + register);
			if (!block.def.contains(register)
					&& !block.liveIn.contains(register)) {
				ret = true;
				block.liveIn.add(register);
			}
		}
		return ret;
	}

	private static boolean calcBlockOut(Block u) {
		boolean ret = false;
		for (Block v: u.blockOut) {
			for (VirtualRegister register: v.liveIn) {
				if (!u.liveOut.contains(register)) {
					u.liveOut.add(register);
					ret = true;
				}
			}
		}
		return ret;
	}

	public static void SetUnion(Set<VirtualRegister> A, Set<VirtualRegister> B) {
		for (VirtualRegister virtualRegister: B){
			A.add(virtualRegister);
		}
	}

}
