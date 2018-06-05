package Optimization;

import AST.Type.IntType;
import IR.Block;
import IR.FunctionIR;
import IR.Instruction.*;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;
import jdk.nashorn.internal.ir.FunctionCall;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class NaiveOptimizer {

	public static void removeUselessRegister(FunctionIR nowFunc) {
		LiveAnalysis.FunctionAnalysis(nowFunc);
		for (Block block: nowFunc.blockList) {
			for (int i = 0; i + 1 < block.instructionList.size(); ++i) {
				Instruction now = block.instructionList.get(i);
				Instruction nxt = block.instructionList.get(i + 1);
				if (now instanceof MoveInstruction
						&& ((MoveInstruction) now).getSource() == ((MoveInstruction) now).target) {
//System.out.println("remove " + now.toString(1));
					block.instructionList.remove(i);
					--i;
					continue;
				}
				if (now instanceof MoveInstruction && nxt instanceof MoveInstruction) {
					if (((MoveInstruction) now).target == ((MoveInstruction) nxt).getSource()
							&& ((MoveInstruction) now).target instanceof VirtualRegister
							&& ((MoveInstruction) nxt).target instanceof VirtualRegister) {
						VirtualRegister register = (VirtualRegister) ((MoveInstruction) now).target;
						if (!nxt.liveOut.contains(register)) {
//System.out.println("replace " + now.toString(1) + nxt.toString(1));
							((MoveInstruction) now).changeTarget(((MoveInstruction) nxt).target);
							block.instructionList.remove(i + 1);

						}
					}
				}
			}
		}

		//System.out.println(nowFunc.toString(1));
	}

	public static void removeUselessInstruction(FunctionIR nowFunc) {
//if (nowFunc.getName().charAt(0) != 's') {
//	return;
//}
//System.out.println("begin\n" + nowFunc.toString(1) + "\n");
		LiveAnalysis.FunctionAnalysis(nowFunc);
		for (Block block: nowFunc.blockList) {
			for (int i = 0; i < block.instructionList.size(); ++i) {
				Instruction instruction = block.instructionList.get(i);
				if (instruction instanceof FunctionCallInstruction) {
					continue;
				}
//				System.out.print("\n>>> now ins: " + instruction.toString(1));
//				System.out.println("liveout: " + " " + instruction.liveOut);
//				System.out.println("livein: " + " " + instruction.liveIn);
//				System.out.println("def: " + " " + instruction.def);
//				System.out.println("use: " + " " + instruction.use);
				Operand register = null;
				if (instruction instanceof AllocateInstruction) {
					register = ((AllocateInstruction) instruction).getMyBase();
				} else if (instruction instanceof BinaryInstruction) {
					register = ((BinaryInstruction) instruction).getTarget();
				} else if (instruction instanceof CSetInstruction) {
					register = ((CSetInstruction) instruction).getTarget();
				} else if (instruction instanceof FunctionCallInstruction) {
					register = ((FunctionCallInstruction) instruction).getReturnValue();
				} else if (instruction instanceof MoveInstruction) {
					register = ((MoveInstruction) instruction).target;
				}
				if (register instanceof VirtualRegister
						&& (((VirtualRegister) register).sysRegister == null
						|| ((VirtualRegister) register).sysRegister.charAt(0) != 'r')
						&& !instruction.liveOut.contains(register)) {
//System.out.print("delete " + instruction.toString(1) + " " + ""/*instruction.liveOut*/);
					block.instructionList.remove(i);
					--i;
				}
			}
		}
//System.out.println("end\n" + nowFunc.toString(1) + "\n");
	}

	public static void removeUselessIteration(FunctionIR nowFunc) {
//		System.out.println(nowFunc.toString(1));
		LiveAnalysis.FunctionAnalysis(nowFunc);
		List<Instruction> instructionList = new ArrayList<>();
		for (Block block: nowFunc.blockList) {
			instructionList.addAll(block.instructionList);
		}

		Map<Label, Integer> labelMap = new HashMap<>();
		for (int i = 0; i < instructionList.size(); ++i) {
			Instruction instruction = instructionList.get(i);
			if (instruction instanceof Label
					&& ((Label) instruction).forLink != null) {
				labelMap.put(((Label) instruction).forLink, i);
			}
		}
//System.err.println("" + labelMap);
		for (int i = instructionList.size() - 1; i > 0; --i) {
//System.out.println("fffff" + " " + i);
			Instruction instruction = instructionList.get(i);
//System.out.println(">>>fffff<<<" + " " + i);
			if (instruction instanceof Label
					&& labelMap.containsKey(instruction)) {
				int l = labelMap.get(instruction), r = i;
				boolean useless = true;
				for (int j = l; j < r; ++j) {
					Instruction now = instructionList.get(j);
					if (!now.noMem()) {
						//System.out.println("fx a");
						useless = false;
						break;
					}
					for (VirtualRegister register: now.def) {
						if (instruction.liveOut.contains(register)) {
							//System.out.println("fx b");
							useless = false;
							break;
						}
					}
				}
				if (useless) {
					for (int k = r - l + 1; k > 0; --k) {
						instructionList.remove(l);
					}
					break;
				}
			}
		}

		nowFunc.getBlocks(instructionList, true);
//		System.out.println(nowFunc.toString(1));
	}

}
