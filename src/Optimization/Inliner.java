package Optimization;

import AST.Type.FunctionType;
import IR.Block;
import IR.FunctionIR;
import IR.IRTranslator;
import IR.Instruction.*;
import IR.Operand.*;
import IR.RegisterManager;
import Utility.RuntimeError;

import java.util.*;
import java.util.function.Function;

public class Inliner {

	private static Map<VirtualRegister, VirtualRegister> vregMap;
	private static Map<Label, Label> labelMap;
	private static VirtualRegister returnValue;
	private static Set<FunctionIR> inlineTimes = new HashSet<>();

	private static VirtualRegister getRegister(VirtualRegister reg) {
		if (reg.sysRegister != null && reg.sysRegister.equals("rax")) { //rax -> returnValue
			return returnValue;
		}
		if (reg.isGlobal) { //global
			return reg;
		}
		if (vregMap.containsKey(reg)) {
			//System.out.println("find " + reg + " get " + vregMap.get(reg));
			return vregMap.get(reg);
		} else {
			VirtualRegister ret = RegisterManager.getVirtualRegister();
			if (reg.sysRegister != null) {
				ret.sysRegister = reg.sysRegister;
			}
			//System.out.println("get a new reg: " + reg + " " + ret);
			vregMap.put(reg, ret);
			return ret;
		}
	}

	private static Operand getOperand(Operand operand) {
		if (operand instanceof Immediate || operand instanceof StringMemory) {
			return operand;
		}
		if (operand instanceof VirtualRegister) {
			return getRegister((VirtualRegister) operand);
		}
		if (operand instanceof Address) {
			return new Address(getRegister(((Address) operand).getBase()), ((Address) operand).getOffset());
		}
		return null;
	}

	private static Label getLabel(FunctionIR caller, Label label) {
		if (labelMap.containsKey(label)) {
			return labelMap.get(label);
		} else {
			Label newLabel = new Label(caller, label.getName());
			labelMap.put(label, newLabel);
			return newLabel;
		}
	}

	private static void single_inliner(FunctionIR nowfunc) {
		//System.out
		List<Instruction> newList = new ArrayList<>();
		for (Block block: nowfunc.blockList) {
			for (Instruction instruction: block.instructionList) {
				if (instruction instanceof FunctionCallInstruction) {
					FunctionType whichFunc = ((FunctionCallInstruction) instruction).functionType;
//System.out.println("print now call: " + whichFunc);
					if (whichFunc.isSystem()
							|| whichFunc.getFullName().charAt(0) == '_'
							|| /*!inlineTimes.contains(nowfunc) && */nowfunc.functionType == whichFunc
							|| newList.size() > 1500) { //sys or global dec
						newList.add(instruction);
						continue;
					}
//System.out.println("print now call: " + whichFunc);
					if (whichFunc.getParameterList().size() > 6) {
						newList.add(instruction);
						continue;
					}

					vregMap = new HashMap<>();
					labelMap = new HashMap<>();

					List<VirtualRegister> tempOperands = new ArrayList<>();
					for (int i = 0; i < whichFunc.getParameterList().size(); ++i) {
						MoveInstruction nowIns = (MoveInstruction) newList.get(newList.size() - 1 - i);
						newList.set(
								newList.size() - 1 - i,
								new MoveInstruction(nowIns.target, nowIns.getSource())
						);
						nowIns = (MoveInstruction) newList.get(newList.size() - 1 - i);

						//mapping original one to a new system register
						VirtualRegister newOperand;
						//fixme!!
//						newOperand = RegisterManager.getVirtualRegister();
//						newOperand.sysRegister = ((VirtualRegister) (nowIns.target)).sysRegister;
//						vregMap.put((VirtualRegister) nowIns.target, newOperand);

						//change now
						newOperand = RegisterManager.getVirtualRegister();
						nowIns.changeTarget(newOperand);
						tempOperands.add(0, newOperand);
					}

					FunctionIR whichIR = IRTranslator.functionIRMap.get(whichFunc.getFullName());
					returnValue = (VirtualRegister) ((FunctionCallInstruction) instruction).getReturnValue();
					getLabel(nowfunc, whichIR.exitLabel);
					int useless = whichFunc.getParameterList().size(), count = 0;
//System.err.println("---------begin--------\n" + whichIR.toString(1));
					for (Block whichBlock: whichIR.blockList) {
						for (Instruction whichInstruction: whichBlock.instructionList) {
							if (whichInstruction instanceof AllocateInstruction) {
								newList.add(new AllocateInstruction(
										getRegister(((AllocateInstruction) whichInstruction).getMyBase()),
										getOperand(((AllocateInstruction) whichInstruction).getAllocateSize())
								));
							} else if (whichInstruction instanceof BinaryInstruction) {
								newList.add(new BinaryInstruction(
										((BinaryInstruction) whichInstruction).getOp(),
										getOperand(((BinaryInstruction) whichInstruction).getTarget()),
										getOperand(((BinaryInstruction) whichInstruction).getSource())
								));
							} else if (whichInstruction instanceof CompareInstruction) {
								newList.add(new CompareInstruction(
										getOperand(((CompareInstruction) whichInstruction).getLeftOper()),
										getOperand(((CompareInstruction) whichInstruction).getRightOper())
								));
							} else if (whichInstruction instanceof CSetInstruction) {
								newList.add(new CSetInstruction(
										((CSetInstruction) whichInstruction).getType(),
										getOperand(((CSetInstruction) whichInstruction).getTarget())
								));
							} else if (whichInstruction instanceof FunctionCallInstruction) {
								List<Operand> parameter = new ArrayList<>();
								for (Operand operand: ((FunctionCallInstruction) whichInstruction).parameterList) {
									parameter.add(getOperand(operand));
								}
								newList.add(new FunctionCallInstruction(
										((FunctionCallInstruction) whichInstruction).functionType,
										parameter,
										getOperand(((FunctionCallInstruction) whichInstruction).getReturnValue())
								));
							} else if (whichInstruction instanceof JumpInstruction) {
								newList.add(new JumpInstruction(
										((JumpInstruction) whichInstruction).getType(),
										getLabel(nowfunc, ((JumpInstruction) whichInstruction).getLabel())
								));
							} else if (whichInstruction instanceof Label) {
								newList.add(getLabel(nowfunc, (Label) whichInstruction));
							} else if (whichInstruction instanceof MoveInstruction) {
								if (useless > 0) {
									--useless;
									vregMap.put(
											(VirtualRegister) ((MoveInstruction) whichInstruction).getTarget(),
											tempOperands.get(count++)
									);
									continue;
								}
								newList.add(new MoveInstruction(
										getOperand(((MoveInstruction) whichInstruction).getTarget()),
										getOperand(((MoveInstruction) whichInstruction).getSource())
								));
							} else if (whichInstruction instanceof UnaryInstruction) {
								newList.add(new UnaryInstruction(
										((UnaryInstruction) whichInstruction).getType(),
										getOperand(((UnaryInstruction) whichInstruction).getTarget())
								));
							}
						}
					}
				} else {
					newList.add(instruction);
				}
			}
		}

		inlineTimes.add(nowfunc);
		nowfunc.getBlocks(newList, true);
	}

	public static void inliner(FunctionIR nowfunc) {
		for (int times = 1; times > 0; --times) {
			single_inliner(nowfunc);
		}
	}

}
