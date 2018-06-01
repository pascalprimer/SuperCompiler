package IR;

import AST.AST;
import AST.Statement.VariableDeclarationStatement;
import AST.Type.ClassType;
import AST.Type.FunctionType;
import IR.Instruction.Instruction;
import IR.Instruction.Label;
import IR.Operand.Address;
import IR.Operand.Immediate;
import IR.Operand.StringMemory;
import IR.Operand.VirtualRegister;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

public class IRTranslator {

	public static Map<String, FunctionIR> functionIRMap;
	public static Map<String, StringMemory> stringList;
	//public static Block globalDeclarationBlock;
	public static Label exitLabel, loopContinue, loopExit;
	public static FunctionIR who;
	public static int VirtualRegisterCnt = 0;

	public static StringMemory getStringOperand(String str) {
		if (stringList.containsKey(str)) {
			return stringList.get(str);
		}
		StringMemory ret = new StringMemory(stringList.size(), str);
		stringList.put(str, ret);
		return ret;
	}

	public static void translate() {
		//System.err.println("----------------");
		functionIRMap = new HashMap<>();
		stringList = new HashMap<>();
//for heap
		for (VariableDeclarationStatement variable: AST.getGlobalVariable()) {
//System.err.println(variable.getName());
			VirtualRegister tmp = (VirtualRegister) variable.getSymbol().operand;
			tmp.isGlobal = true;
			tmp.sysRegister = "@" + variable.getName();
			variable.getSymbol().operand = new Address(tmp, new Immediate(0));
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

		Block globalDeclarationBlock = new Block("@global_declaration", null);
		for (VariableDeclarationStatement variable: AST.getGlobalVariable()) {
			variable.translateIR(globalDeclarationBlock.instructionList);
		}
		globalDeclarationBlock.id = 0;
		FunctionIR globalDeclaration =
				new FunctionIR(new FunctionType("__global_declaration"));
		globalDeclaration.blockList = new ArrayList<Block>() {{
			add(globalDeclarationBlock);
		}};
		for (Instruction instruction: globalDeclarationBlock.instructionList) {
			if (instruction instanceof Label) {
				((Label) instruction).blockBelong = globalDeclarationBlock;
			}
		}
		functionIRMap.put("__global_declaration", globalDeclaration);
	}

	public static void print(int indents) {
		System.out.println("------- start printing IR -------");
		for (FunctionIR functionIR: functionIRMap.values()) {
			if (functionIR.getName().charAt(0) != '_') {
				//continue;
			}
			System.out.println(functionIR.toString(indents));
		}
		System.out.println("-------------- end --------------");
	}

}
