package IR;

import AST.AST;
import AST.Statement.VariableDeclarationStatement;
import AST.Type.ClassType;
import AST.Type.FunctionType;
import IR.Instruction.Label;
import IR.Operand.Address;
import IR.Operand.StringMemory;
import IR.Operand.VirtualRegister;

import java.util.HashMap;
import java.util.Map;

public class IRTranslator {

	public static Map<String, FunctionIR> functionIRMap;
	public static Map<String, StringMemory> stringList;
	public static Block globalDeclarationBlock;
	public static Label exitLabel, loopContinue, loopExit;

	public static StringMemory getStringOperand(String str) {
		if (stringList.containsKey(str)) {
			return stringList.get(str);
		}
		StringMemory ret = new StringMemory(str);
		stringList.put(str, ret);
		return ret;
	}

	public static void translate() {
		functionIRMap = new HashMap<>();
		stringList = new HashMap<>();
//for heap
		for (VariableDeclarationStatement variable: AST.getGlobalVariable()) {
			VirtualRegister tmp = new VirtualRegister("@" + variable.getName());
			variable.getSymbol().operand = new Address(tmp, null);
		}

		for (FunctionType functionType: AST.getGlobalFunction()) {
			if (functionType.isSystem()) {
				continue;
			}
			functionIRMap.put(functionType.getName(), new FunctionIR(functionType));
		}

		for (ClassType classType: AST.getClassType()) {
			for (FunctionType functionType: classType.getMemberFunction().getFunctionTable().values()) {
				functionIRMap.put(functionType.getFullName(), new FunctionIR(functionType));
			}
			if (classType.getConstructionFunction() != null) {
				functionIRMap.put(
						classType.getConstructionFunction().getFullName(),
						new FunctionIR(classType.getConstructionFunction())
				);
			}
		}

		globalDeclarationBlock = new Block("__global_declaration", null);
		for (VariableDeclarationStatement variable: AST.getGlobalVariable()) {
			VirtualRegister tmp = new VirtualRegister("@" + variable.getName());
			variable.getSymbol().operand = tmp;
			variable.translateIR(globalDeclarationBlock.instructionList);
		}
	}

}
