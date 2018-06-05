package Optimization;

import AST.Type.IntType;
import IR.Block;
import IR.FunctionIR;
import IR.Instruction.*;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;
import jdk.nashorn.internal.ir.FunctionCall;

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

}
