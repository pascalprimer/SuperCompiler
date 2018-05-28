package IR.Instruction;

import IR.Operand.Address;
import IR.Operand.Operand;
import IR.RegisterManager;
import NASM.NASMTranslator;
import NASM.PhysicalOperand.PhysicalImmediate;
import NASM.PhysicalOperand.PhysicalOperand;
import NASM.PhysicalOperand.SystemRegister;
import Utility.RuntimeError;

import static IR.Instruction.BinaryInstruction.Operation.DIV;
import static IR.Instruction.BinaryInstruction.Operation.MOD;
import static jdk.nashorn.internal.parser.TokenType.MUL;

public class BinaryInstruction extends Instruction {

	public enum Operation {
		ADD, SUB, MUL, DIV, MOD, SHL, SHR, XOR, AND, OR
	};

	private Operand target, source;
	private Operation op;

	public BinaryInstruction(Operation op, Operand target, Operand source) {
		if (target instanceof Address && source instanceof Address) {
			throw new RuntimeError("target & source both address");
		}
		this.op = op;
		this.target = target;
		this.source = source;
	}

	@Override
	public void loadVirtualRegister() {
		RegisterManager.addVirtualRegister(target);
		RegisterManager.addVirtualRegister(source);
	}

	@Override
	public String translateNASM() {
		StringBuilder code = new StringBuilder();
		String oper = op.toString().toLowerCase();
		PhysicalOperand physicalTarget = PhysicalOperand.get(code, target),
				physicalSource = PhysicalOperand.get(code, source);

		//shl <<, shr >>
		if (op.equals(Operation.SHL) || op.equals(Operation.SHR)) {
			if (physicalSource instanceof PhysicalImmediate) {
				code.append(NASMTranslator.getInstruction(
						oper,
						physicalTarget.toString(),
						String.valueOf(((PhysicalImmediate) physicalSource).value)
				));
			} else {
				code.append(NASMTranslator.getInstruction(
						"mov", "rcx", physicalSource.toString()
				));
				code.append(NASMTranslator.getInstruction(
						oper, physicalTarget.toString(), "cl"
				));
			}
			return code.toString();
		}
		//mul *
		if (op.equals(Operation.MUL)) {
			if (physicalTarget instanceof SystemRegister) {
				code.append(NASMTranslator.getInstruction(
						"imul", physicalTarget.toString(), physicalSource.toString()
				));
			} else {
				code.append(NASMTranslator.getInstruction(
						"mov", "rax", physicalTarget.toString()
				));
				code.append(NASMTranslator.getInstruction(
						"imul", "rax", physicalSource.toString()
				));
				code.append(NASMTranslator.getInstruction(
						"mov", physicalTarget.toString(), "rax"
				));
			}
			return code.toString();
		}

		//div /, mod %
		if (op.equals(Operation.DIV) || op.equals(Operation.MOD)) {
			code.append(NASMTranslator.getInstruction(
					"mov", "rax", physicalTarget.toString()
			));
			code.append(NASMTranslator.getInstruction(
					"mov", "rcx", physicalSource.toString()
			));
			code.append(NASMTranslator.getInstruction("cdq"));
			code.append(NASMTranslator.getInstruction("idiv", "ecx"));
			code.append(NASMTranslator.getInstruction(
					"mov",
					physicalTarget.toString(),
					(op.equals(Operation.DIV) ? "rax" : "rdx")
			));
			return code.toString();
		}

		//others
		if (physicalTarget instanceof SystemRegister) {
			code.append(NASMTranslator.getInstruction(
					oper, physicalTarget.toString(), physicalSource.toString()
			));
		} else {
			code.append(NASMTranslator.getInstruction(
					"mov", "rax", physicalTarget.toString()
			));
			code.append(NASMTranslator.getInstruction(
					oper, "rax", physicalSource.toString()
			));
			code.append(NASMTranslator.getInstruction(
					"mov", physicalTarget.toString(), "rax"
			));
		}

		return code.toString();
	}

	@Override
	public String toString(int indents) {
		return Utility.GetIndents.getIndents(indents) +
				op.toString().toLowerCase() + "\t" +
				(target == null ? "null" : target.toString()) + "\t" +
				(source == null ? "null" : source.toString()) + "\n";
	}

}
