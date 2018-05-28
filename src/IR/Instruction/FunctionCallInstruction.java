package IR.Instruction;

import AST.Type.FunctionType;
import IR.Operand.Operand;
import IR.RegisterManager;
import NASM.NASMTranslator;

import java.util.List;

public class FunctionCallInstruction extends Instruction{

	private String functionName;
	private FunctionType functionType;
	private List<Operand> parameterList;
	private Operand returnValue;

	public FunctionCallInstruction(
			FunctionType functionType,
			List<Operand> parameterList,
			Operand returnValue
	) {
		this.functionName = functionType.getFullName();
		this.functionType = functionType;
		this.parameterList = parameterList;
		this.returnValue = returnValue;
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
			code.append(NASMTranslator.getInstruction(
					"mov",
					"qword[rsp+" + String.valueOf((i + 2) << 3) + "]",
					String.valueOf(parameterList.size() << 3)
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

	@Override
	public String toString(int indents) {
		return Utility.GetIndents.getIndents(indents) +
				(returnValue == null ? "null" : returnValue.toString()) +
				" = " + functionName + "()\n";
	}

}