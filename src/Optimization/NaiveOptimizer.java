package Optimization;

import AST.Type.IntType;
import IR.Block;
import IR.FunctionIR;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;

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
							System.out.println("replace " + now.toString(1) + nxt.toString(1));
							((MoveInstruction) now).changeTarget(((MoveInstruction) nxt).target);
							block.instructionList.remove(i + 1);

						}
					}
				}
			}
		}

		//System.out.println(nowFunc.toString(1));
	}

}
