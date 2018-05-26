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

	private void allocate(Operand base, Type newType, List<Operand> operandList, List<Instruction> instructionList) {
		if (newType instanceof ClassType) {
			instructionList.add(new AllocateInstruction(
					base, ((ClassType) newType).getAllocateSize()
			));
			if (((ClassType) newType).getConstructionFunction() != null) {
				instructionList.add(new FunctionCallInstruction(
								((ClassType) newType).getConstructionFunction(),
								new ArrayList<>(),
								null
				));
			}
			return;
		}
		VirtualRegister size = RegisterManager.getVirtualRegister();
		instructionList.add(new BinaryInstruction(
				BinaryInstruction.Operation.SHL,
				operandList.get(0),
				new Immediate(1),
				size
		));
		instructionList.add(new AllocateInstruction(base, size));
		operandList.remove(0);
		Type nextType = ((ArrayType) newType).prefixArray();
		if (nextType instanceof ClassType || operandList.size() > 0) {
			/*
			idx = 0
			ALLOCATE:
			allocate(Address(base, idx),...)
			idx += 8
			cmp idx size
			JL ALLOCATE
			 */
			VirtualRegister idx = RegisterManager.getVirtualRegister();
			instructionList.add(new MoveInstruction(new Immediate(0), idx));
			Label allocateLabel = new Label(
					"ALLOCATE" + String.valueOf(((ArrayType) newType).getDimension()
			));
			instructionList.add(allocateLabel);
			VirtualRegister tmpBase = RegisterManager.getVirtualRegister();
			instructionList.add(new MoveInstruction(base, tmpBase));
			allocate(new Address(tmpBase, idx), nextType, operandList, instructionList);
			instructionList.add(new BinaryInstruction(
					BinaryInstruction.Operation.ADD,
					idx,
					new Immediate(8),
					idx
			));
			instructionList.add(new CompareInstruction(idx, size));
			instructionList.add(new JumpInstruction(JumpInstruction.Type.JL, allocateLabel));
		}
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		List<Operand> operandList = new ArrayList<>();
		for (Expression expression: list) {
			if (expression != null) {
				expression.translateIR(instructionList);
				operandList.add(expression.operand);
			}
		}
		operand = RegisterManager.getVirtualRegister();
		allocate(operand, newType, operandList, instructionList);
	}
}
