package IR;

import AST.Symbol.Symbol;
import AST.Type.FunctionType;
import IR.Instruction.Instruction;
import IR.Instruction.Label;
import IR.Instruction.MoveInstruction;
import IR.Operand.Address;
import IR.Operand.Immediate;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;
import NASM.NASMTranslator;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FunctionIR {

	public List<Block> blockList;
	private String name;
	private FunctionType functionType;
	private Label enterLabel, exitLabel;
	private List<Operand> parameterList;
	public Map<VirtualRegister, String> systemRegisterMap;
	public Map<VirtualRegister, Integer> offsetMap;
	public List<String> calleeRegisters, callerRegisters;
	public int labelID;
	//	private Operand returnOperand;
	//private VirtualRegister functionBase;

	public FunctionIR(FunctionType functionType) {

		//System.err.println(functionType.getFullName());
		IRTranslator.who = this;
		this.labelID = 0;
		this.systemRegisterMap = new HashMap<>();
		this.offsetMap = new HashMap<>();
		this.name = functionType.getFullName();
		this.functionType = functionType;
		this.parameterList = new ArrayList<>();
		this.blockList = new ArrayList<>();
		//this.functionBase = new VirtualRegister(name + "Base");
		int cnt = 0;
		for (Symbol symbol: functionType.getParameterList()) {
//fixme first 6parameters
			//symbol.operand = new Address(functionBase, new Immediate(cnt += 1));
			this.parameterList.add(symbol.operand);
		}
		buildCFG();
	}

	public void buildCFG() {
		enterLabel = new Label("enter");
		exitLabel = new Label("exit");
		Label tmpLabel = new Label("tmp_label");
		IRTranslator.exitLabel = exitLabel;
		List<Instruction> instructionList = new ArrayList<>();
		instructionList.add(enterLabel);

		for (int i = 0; i < parameterList.size(); ++i) {
			if (i < 6) {
				VirtualRegister tmp = RegisterManager.getVirtualRegister();
				tmp.sysRegister = RegisterManager.parameterRegisterName.get(i);
				instructionList.add(new MoveInstruction(parameterList.get(i), tmp));
				systemRegisterMap.put(tmp, tmp.sysRegister);
			} else {
				offsetMap.put((VirtualRegister) parameterList.get(i), 4 - i);
			}
		}
		if (functionType.getBody() != null) {
			functionType.getBody().translateIR(instructionList);
		}
		instructionList.add(exitLabel);

		instructionList.add(tmpLabel);
		int cnt = 0;
		for (int i = 0, j = i; i + 1 < instructionList.size(); i = j) {
			Block nowBlock = new Block(
					((Label) instructionList.get(i)).getName(),
					this
			);
			nowBlock.addInstruction(instructionList.get(i));
			blockList.add(nowBlock);
			nowBlock.id = cnt++;
			for (++j; !(instructionList.get(j) instanceof Label); ++j) {
				nowBlock.addInstruction(instructionList.get(j));
			}
		}
		//System.err.println("---------------------");
	}

	public String translateNASM() {
		StringBuilder code = new StringBuilder();

		RegisterManager.prepareLoading();
		for (Block block: blockList) {
			for (Instruction instruction: block.instructionList) {
				instruction.loadVirtualRegister();
			}
		}

		calleeRegisters = new ArrayList<>();
		callerRegisters = new ArrayList<>();
		for (String string: RegisterManager.usedRegister) {
			if (RegisterManager.calleeRegisterName.contains(string)) {
				calleeRegisters.add(string);
			}
			if (RegisterManager.callerRegisterName.contains(string)) {
				callerRegisters.add(string);
			}
		}

		NASMTranslator.rspOffset = 1;
		code.append(name + ":\n");
		code.append(NASMTranslator.getInstruction("push", "rbp"));
		code.append(NASMTranslator.getInstruction("mov", "rbp", "rsp"));

		if (name.equals("main")) {
			code.append(NASMTranslator.getInstruction("call", "__global_declaration"));
		}

		int cntTemp = offsetMap.size();
//		if (!name.equals("main")) {
//			System.out.println(offsetMap.size());
//		}
		if (parameterList.size() > 5) {
			cntTemp -= parameterList.size() - 5;
		}
		if (cntTemp > 0) {
			code.append(NASMTranslator.getInstruction("sub", "rsp", String.valueOf(8 * cntTemp)));
			NASMTranslator.rspOffset += cntTemp;
		}

		code.append(NASMTranslator.saveCalleeRegister(calleeRegisters));

		for (Block block: blockList) {
			for (Instruction instruction: block.instructionList) {
				code.append(instruction.translateNASM());
			}
		}

		code.append(NASMTranslator.restoreCalleeRegister(calleeRegisters));

		if (cntTemp > 0) {
			code.append(NASMTranslator.getInstruction("add", "rsp", String.valueOf(8 * cntTemp)));
			NASMTranslator.rspOffset -= cntTemp;
		}

		code.append(NASMTranslator.getInstruction("pop", "rbp"));
		code.append(NASMTranslator.getInstruction("ret"));

		return code.toString();
	}

	public String getName() {
		return name;
	}

	public String toString(int indents) {
		if (name.equals("main")) {
			name = "main";
		}
		StringBuilder str = new StringBuilder();
		str.append("Function " + name + "{\n");
		for (Block block: blockList) {
			str.append(block.toString(indents));
		}
		str.append("}\n");
		return str.toString();
	}
}
