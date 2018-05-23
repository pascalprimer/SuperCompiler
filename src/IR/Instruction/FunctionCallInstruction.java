package IR.Instruction;

import AST.Type.FunctionType;
import IR.Operand.Operand;

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

}
