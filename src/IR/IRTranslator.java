package IR;

import AST.AST;
import AST.Expression.Expression;
import AST.Expression.IdentifierExpression;
import AST.Statement.VariableDeclarationStatement;
import AST.Type.ClassType;
import AST.Type.FunctionType;
import AST.Type.IntType;
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

	public static int functionNumber = 0;
	public static int memNumber = 0;

	public static int r233 = 0;
	public static Map<String, FunctionIR> functionIRMap;
	public static Map<String, StringMemory> stringList;
	//public static Block globalDeclarationBlock;
	public static Label exitLabel, loopContinue, loopExit;
	public static FunctionIR who;
	public static int VirtualRegisterCnt = 0;

	public static Map<FunctionIR, VirtualRegister> purityReg = new HashMap<>();
	public static final int puritySize = 150;
	public static final int purityTag = -1887415157;

	public static Map<String, Expression> builtOperand = new HashMap<>();

	public static Label fatherAndLabel = null;
	public static Label fatherOrLabel = null;

	//public static Hash<Symbol>

	public static Expression getBuiltExpression(String hash, Expression who) {
//System.out.println("try " + hash);
//System.out.println(builtOperand);
		if (builtOperand.containsKey(hash)) {
//System.out.println("find " + hash);
			Expression exp = builtOperand.get(hash);
//			if (exp instanceof IdentifierExpression) {
//				return null;
//			}
			return builtOperand.get(hash);
		} else {
			builtOperand.put(hash, who);
		}
		return null;
	}

	public static void dfsBuiltOperand() {
		for (FunctionType functionType: AST.getGlobalFunction()) {
			if (functionType.isSystem()) {
				continue;
			}
			functionType.dfsBuiltOperand(true);
		}

		for (ClassType classType: AST.getClassType()) {
			for (FunctionType functionType : classType.getMemberFunction().getFunctionTable().values()) {
				functionType.dfsBuiltOperand(true);
			}
			if (classType.getConstructionFunction() != null) {
				classType.getConstructionFunction().dfsBuiltOperand(true);
			}
		}
	}

	public static void dfsUseful() {
		for (FunctionType functionType: AST.getGlobalFunction()) {
			if (functionType.isSystem()) {
				continue;
			}
			functionType.dfsUseful();
		}
		for (ClassType classType: AST.getClassType()) {
			for (FunctionType functionType : classType.getMemberFunction().getFunctionTable().values()) {
				functionType.dfsUseful();
			}
			if (classType.getConstructionFunction() != null) {
				classType.getConstructionFunction().dfsUseful();
			}
		}
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

		dfsBuiltOperand();
		dfsUseful();

		//System.err.println("----------------");
		functionIRMap = new HashMap<>();
		stringList = new HashMap<>();

		FunctionType mainFunc = null;
		for (FunctionType functionType: AST.getGlobalFunction()) {
			if (functionType.getFullName().equals("main")) {
				mainFunc = functionType;
			}
		}

		//for heap
		int cnt = 0;
		for (VariableDeclarationStatement variable: AST.getGlobalVariable()) {
//System.err.println(variable.getName());
			VirtualRegister tmp = (VirtualRegister) variable.getSymbol().operand;
			if (variable.getSymbol().getType() instanceof IntType
					&& memNumber + functionNumber == 1) {
				System.out.println("global: " + variable.getSymbol());
				mainFunc.getBody().addStatement(cnt++, variable);
				continue;
			}
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
		VirtualRegister tempBase = RegisterManager.getVirtualRegister();
		for (Map.Entry<FunctionIR, VirtualRegister> entry: purityReg.entrySet()) {
			globalDeclarationBlock.instructionList.add(new AllocateInstruction(
					tempBase, puritySize
			));
			globalDeclarationBlock.instructionList.add(new MoveInstruction(
					new Address(entry.getValue(), new Immediate(0)), tempBase
			));
			for (int i = 0; i < puritySize; ++i) {
				globalDeclarationBlock.instructionList.add(new MoveInstruction(
						new Address(entry.getValue(), new Immediate(i)), new Immediate(purityTag)
				));
			}
		}
		for (VariableDeclarationStatement variable: AST.getGlobalVariable()) {
			if (variable.getSymbol().getType() instanceof IntType
					&& memNumber + functionNumber == 1) {
				continue;
			}
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
