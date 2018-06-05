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
		LiveAnalysis.FunctionAnalysis(nowFunc);
		for (Block block: nowFunc.blockList) {
			for (int i = 0; i < block.instructionList.size(); ++i) {
				Instruction instruction = block.instructionList.get(i);
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
					block.instructionList.remove(i);
					--i;
				}
			}
		}
	}

}
