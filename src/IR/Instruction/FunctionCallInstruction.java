package IR.Instruction;

import AST.Type.FunctionType;
import IR.IRTranslator;
import IR.Operand.Address;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;
import IR.RegisterManager;
import NASM.NASMTranslator;
import NASM.PhysicalOperand.PhysicalAddress;
import NASM.PhysicalOperand.PhysicalOperand;
import NASM.PhysicalOperand.SystemRegister;

import java.util.List;

public class FunctionCallInstruction extends Instruction{

	private String functionName;
	public FunctionType functionType;
	public List<Operand> parameterList;
	private Operand returnValue;

	public FunctionCallInstruction(
			FunctionType functionType,
			List<Operand> parameterList,
			Operand returnValue
	) {
		super();
		this.functionName = functionType.getFullName();
		this.functionType = functionType;
		this.parameterList = parameterList;
		this.returnValue = returnValue;
		claimSet();
	}

	@Override
	public void claimSet() {
		if (returnValue instanceof VirtualRegister) {
			def.add((VirtualRegister) returnValue);
			((VirtualRegister) returnValue).addLoop(loopNumber);
		}
		if (returnValue instanceof Address) {
			use.add(((Address) returnValue).getBase());
			((Address) returnValue).getBase().addLoop(loopNumber);
		}
		for (Operand source: parameterList) {
			if (source instanceof VirtualRegister) {
				use.add((VirtualRegister) source);
				((VirtualRegister) source).addLoop(loopNumber);
			}
			if (source instanceof Address) {
				use.add(((Address) source).getBase());
				((Address) source).getBase().addLoop(loopNumber);
			}
		}
	}

	@Override
	public void loadVirtualRegister() {
		for (Operand operand: parameterList) {
			RegisterManager.addVirtualRegister(operand);
		}
		RegisterManager.addVirtualRegister(returnValue);
	}

	@Override
	public String translateNASM() {
		StringBuilder code = new StringBuilder();

		code.append(NASMTranslator.saveCallerRegister(NASMTranslator.nowFunctionIR.callerRegisters));

		int rsp_delta = parameterList.size();
		if ((NASMTranslator.rspOffset + rsp_delta) % 2 == 1) {
			++rsp_delta;
		}
		if (rsp_delta > 0) {
			code.append(NASMTranslator.getInstruction(
					"sub", "rsp", String.valueOf(rsp_delta << 3)
			));
			NASMTranslator.rspOffset += rsp_delta;
		}

		for (int i = parameterList.size() - 1; i >= 0; --i) {
			PhysicalOperand nowPara = PhysicalOperand.get(code, parameterList.get(i));
			if (nowPara instanceof PhysicalAddress) {
				code.append(NASMTranslator.getInstruction("mov", "rcx", nowPara.toString()));
				nowPara = new SystemRegister("rcx");
			}
			code.append(NASMTranslator.getInstruction(
					"mov",
					"qword[rsp+" + String.valueOf(i << 3) + "]",
					nowPara.toString()
			));
		}
		code.append(NASMTranslator.getInstruction("call\t" + functionName));

		if (rsp_delta > 0) {
			code.append(NASMTranslator.getInstruction(
					"add", "rsp", String.valueOf(rsp_delta << 3)
			));
			NASMTranslator.rspOffset -= rsp_delta;
		}

		code.append(NASMTranslator.restoreCallerRegister(NASMTranslator.nowFunctionIR.callerRegisters));

		return code.toString();
	}

	public Operand getReturnValue() {
		return returnValue;
	}

	@Override
	public boolean getPurity() {
		return functionType == IRTranslator.who.functionType;
	}

	@Override
	public String toString(int indents) {
		return Utility.GetIndents.getIndents(indents) +
				(returnValue == null ? "null" : returnValue.toString()) +
				" = " + functionName + "()\n";
	}

}
