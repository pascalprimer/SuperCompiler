package AST.Expression;

import AST.Symbol.Type;
import AST.Type.ArrayType;
import AST.Type.ClassType;
import IR.Instruction.*;
import IR.Operand.Address;
import IR.Operand.Immediate;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;
import IR.RegisterManager;
import Utility.CompilerError;

import java.util.ArrayList;
import java.util.List;

public class NewExpression extends Expression {

	private Type newType;
	private List<Expression> list;

	private NewExpression(Type newType, List<Expression> list, Type returnType) {
		super("new", false, returnType);
		this.newType = newType;
		this.list = list;
	}

	public static Expression getExpression(Type type, List<Expression> list) {
		if (!(type instanceof ClassType) && list.size() == 0) {
			throw new CompilerError("Base class cannot new");
		}
		if (list.size() > 0) {
			if (type instanceof ArrayType) {
				throw new CompilerError("Maybe new int[][12] is wrong???!!!???");
			}
			if (list.get(0) == null) {
				throw new CompilerError("new type[][exp] is wrong");
			}
			boolean nullExist = true;
			for (Expression exp: list) {
				if (exp == null) {
					nullExist = false;
				} else {
					if (!nullExist) {
						throw new CompilerError("You are dancing: new type[12][][12]");
					}
				}
			}
			return new NewExpression(type, list, new ArrayType(type, list.size()));
		} else {
			return new NewExpression(type, new ArrayList<>(), type);
		}
	}

	@Override
	public boolean getUseful() {
		return false;
	}

	@Override
	public void dfsUseful(boolean useful) {
		modifyTag = true;
		for (Expression expression: list) {
			if (expression != null) {
				expression.dfsUseful(true);
			}
		}
	}

	@Override
	public void dfsBuiltOperand(boolean ok) {
		if (!ok) {
			return;
		}
		for (Expression expression: list) {
			if (expression != null) {
				expression.dfsBuiltOperand(ok);
			}
		}
	}

	private void allocate(VirtualRegister base, Type newType, List<Operand> operandList, List<Instruction> instructionList) {
		//System.err.println(base.getName());
		if (newType instanceof ClassType) {
			instructionList.add(new AllocateInstruction(
					base, ((ClassType) newType).getAllocateSize() << 3
			));
			if (((ClassType) newType).getConstructionFunction() != null) {
				VirtualRegister tmp = RegisterManager.getVirtualRegister();
				tmp.sysRegister = "rdi";
				instructionList.add(new MoveInstruction(tmp, base));
				instructionList.add(new FunctionCallInstruction(
								((ClassType) newType).getConstructionFunction(),
								new ArrayList<>(), null
				));
			}
			return;
		}

		VirtualRegister size = RegisterManager.getVirtualRegister(),
						tmp = RegisterManager.getVirtualRegister();
		//size = (allocateSize+1) << 3
		instructionList.add(new MoveInstruction(size, operandList.get(0)));
		instructionList.add(new MoveInstruction(tmp, operandList.get(0)));
		instructionList.add(new BinaryInstruction(
				BinaryInstruction.Operation.ADD, size, new Immediate(1)
		));
		instructionList.add(new BinaryInstruction(
				BinaryInstruction.Operation.SHL, size, new Immediate(3)
		));
		//base = malloc(size)
		instructionList.add(new AllocateInstruction(base, size));
		instructionList.add(new MoveInstruction(new Address(base, new Immediate(0)), tmp));
		instructionList.add(new BinaryInstruction(
				BinaryInstruction.Operation.ADD, base, new Immediate(8)
		));
		instructionList.add(new BinaryInstruction(
				BinaryInstruction.Operation.SUB, size, new Immediate(8)
		));
		//-> size = allocateSize << 3
		operandList.remove(0);
		Type nextType = ((ArrayType) newType).prefixArray();
		if (/*nextType instanceof ClassType || */operandList.size() > 0) {
			/*
			idx = base, endIDX = base + size
			ALLOCATE:
			allocate(idx,...)
			idx += 8
			cmp idx endIDX
			JL ALLOCATE
			 */
			VirtualRegister idx = RegisterManager.getVirtualRegister(),
							endIDX = RegisterManager.getVirtualRegister();
			instructionList.add(new MoveInstruction(idx, base));
			instructionList.add(new MoveInstruction(endIDX, base));
			instructionList.add(new BinaryInstruction(
					BinaryInstruction.Operation.ADD, endIDX, size
			));
			Label allocateLabel = new Label(
					"Allocate" + String.valueOf(((ArrayType) newType).getDimension())
			);
			instructionList.add(allocateLabel);
			//VirtualRegister tmpBase = RegisterManager.getVirtualRegister();
			//instructionList.add(new MoveInstruction(tmpBase, base));

			VirtualRegister nxtBase = RegisterManager.getVirtualRegister();
			allocate(nxtBase, nextType, operandList, instructionList);
			instructionList.add(new MoveInstruction(new Address(idx, new Immediate(0)), nxtBase));
			instructionList.add(new BinaryInstruction(
					BinaryInstruction.Operation.ADD, idx, new Immediate(8)
			));
			instructionList.add(new CompareInstruction(idx, endIDX));
			instructionList.add(new JumpInstruction(JumpInstruction.Type.JL, allocateLabel));
		}
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		//System.out.println(HASH);
		List<Operand> operandList = new ArrayList<>();
		for (Expression expression: list) {
			if (expression != null) {
				expression.translateIR(instructionList);
				operandList.add(expression.operand);
			}
		}
		operand = RegisterManager.getVirtualRegister();
		allocate((VirtualRegister) operand,
				list.size() == 0 ? newType : new ArrayType(newType, list.size()),
				operandList,
				instructionList
		);
	}
}
