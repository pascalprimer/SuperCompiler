package NASM;

import AST.AST;
import AST.Statement.VariableDeclarationStatement;
import IR.FunctionIR;
import IR.IRTranslator;
import IR.Operand.Address;
import IR.Operand.StringMemory;
import IR.Operand.VirtualRegister;
import javafx.util.Pair;

import java.util.List;
import java.util.Map;

public class NASMTranslator {

	public static int rspOffset;
	public static FunctionIR nowFunctionIR;

	static public String getInstruction(String a, String b) {
		if (a.equals("pop")) {
			rspOffset++;
		} else {
			rspOffset--;
		}
		return String.format("%8s %20s\n", a, b);
	}

	static public String getInstruction(String a, String b, String c) {
		return String.format("%8s %20s, %20s\n", a, b, c);
	}

	static public String getInstruction(String a) {
		return String.format("%8s\n", a);
	}

	static public String saveCallerRegister(List<String> callerRegisters) {
		StringBuilder code = new StringBuilder();
		for (String register: callerRegisters) {
			rspOffset++;
			code.append(getInstruction("push", register));
		}
		return code.toString();
	}

	static public String restoreCallerRegister(List<String> callerRegisters) {
		StringBuilder code = new StringBuilder();
		for (int i = callerRegisters.size() - 1; i >= 0; --i) {
			rspOffset--;
			code.append(getInstruction("pop", callerRegisters.get(i)));
		}
		return code.toString();
	}

	static public String saveCalleeRegister(List<String> calleeRegisters) {
		StringBuilder code = new StringBuilder();
		for (String register: calleeRegisters) {
			rspOffset++;
			code.append(getInstruction("push", register));
		}
		return code.toString();
	}

	static public String restoreCalleeRegister(List<String> calleeRegisters) {
		StringBuilder code = new StringBuilder();
		for (int i = calleeRegisters.size() - 1; i >= 0; --i) {
			rspOffset--;
			code.append(getInstruction("pop", calleeRegisters.get(i)));
		}
		return code.toString();
	}

	static public StringBuilder translate() {
		StringBuilder code = new StringBuilder();
		code.append(getInstruction("global", "main"));
		code.append("  extern\tmalloc\n");

		code.append(textTranslate());
		code.append(bssTranslate());
		code.append(dataTranslate());
		code.append(SystemFunction.loadSystemFunction());
		return code;
	}

	static public String textTranslate() {
		StringBuilder code = new StringBuilder();
		code.append("\n\n");
		code.append(getInstruction("section", ".text"));
		for (FunctionIR functionIR: IRTranslator.functionIRMap.values()) {
			nowFunctionIR = functionIR;
			code.append(functionIR.translateNASM());
		}
		return code.toString();
	}

	static public String dataTranslate() {
		StringBuilder code = new StringBuilder();
		code.append("\n\n");
		code.append(getInstruction("section", ".data"));
		for (StringMemory str: IRTranslator.stringList.values()) {
			Pair<String, Integer> tmp = str.toPrint();
			code.append(getInstruction("dq", String.valueOf(tmp.getValue().intValue())));
			code.append(str.tag + ":\n");
			code.append(String.format("%8s %s\n", "db", tmp.getKey()));
		}
		return code.toString();
	}

	static public String bssTranslate() {
		StringBuilder code = new StringBuilder();
		code.append("\n\n");
		code.append(getInstruction("section", ".bss"));
		for (VariableDeclarationStatement vds: AST.getGlobalVariable()) {
			code.append(((Address) (vds.getSymbol().operand)).getBase().sysRegister + "   resq 1");
		}
		return code.toString();
	}

}
