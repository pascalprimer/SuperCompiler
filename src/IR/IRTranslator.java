package IR;

import AST.AST;
import AST.Statement.VariableDeclarationStatement;
import AST.Type.ClassType;
import AST.Type.FunctionType;
import IR.Instruction.AllocateInstruction;
import IR.Instruction.Instruction;
import IR.Instruction.Label;
import IR.Instruction.MoveInstruction;
import IR.Operand.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

public class IRTranslator {

	public static int r233 = 0;
	public static Map<String, FunctionIR> functionIRMap;
	public static Map<String, StringMemory> stringList;
	//public static Block globalDeclarationBlock;
	public static Label exitLabel, loopContinue, loopExit;
	public static FunctionIR who;
	public static int VirtualRegisterCnt = 0;

	public static Map<FunctionIR, VirtualRegister> purityReg = new HashMap<>();
	public static final int puritySize = 100;
	public static final int purityTag = -1887415157;

	public static Map<String, Operand> builtOperand = new HashMap<>();

	public static Operand getBuiltOperand(String hash) {
		//System.out.println(hash + " " + builtOperand.containsKey(hash));
		if (builtOperand.containsKey(hash)) {
//System.out.println("find " + hash);
			return builtOperand.get(hash);
		}
		return null;
	}

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
//System.out.println("gg: " + tmp.getName());
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
		VirtualRegister tempBase = RegisterManager.getVirtualRegister();
		for (Map.Entry<FunctionIR, VirtualRegister> entry: purityReg.entrySet()) {
			globalDeclarationBlock.instructionList.add(new AllocateInstruction(
					tempBase, puritySize
			));
			globalDeclarationBlock.instructionList.add(new MoveInstruction(
					new Address(entry.getValue(), new Immediate(0)), tempBase
			));
			for (int i = 0; i < 100; ++i) {
				globalDeclarationBlock.instructionList.add(new MoveInstruction(
						new Address(entry.getValue(), new Immediate(i)), new Immediate(purityTag)
				));
			}
		}
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
