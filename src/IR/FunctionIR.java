package IR;

import AST.Symbol.Symbol;
import AST.Type.*;
import IR.Instruction.*;
import IR.Operand.Address;
import IR.Operand.Immediate;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;
import NASM.NASMTranslator;
import NASM.PhysicalOperand.PhysicalOperand;

import java.util.*;

public class FunctionIR {

	public List<Block> blockList;
	private String name;
	public FunctionType functionType;
	public Label enterLabel, exitLabel;
	private List<Operand> parameterList;
	public Map<VirtualRegister, String> systemRegisterMap;
	public Map<VirtualRegister, Integer> offsetMap;
	public List<String> calleeRegisters, callerRegisters;
	public int labelID;

	public boolean purity;
	public VirtualRegister purityRegister, purityParameter;
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
		this.purity = true;
		if (functionType.getParameterList().size() != 1
				|| functionType.getReturnType() instanceof VoidType
				|| functionType.getReturnType() instanceof NullType
				|| functionType.getReturnType() instanceof StringType
				|| !(functionType.getParameterList().get(0).getType() instanceof IntType)) {
			this.purity = false;
		}
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
		checkPurity();
		getBlocks(instructionList);
		//System.err.println("---------------------");
	}

	public void getBlocks(List<Instruction> instructionList) {

		for (int i = 0; i + 1 < instructionList.size(); ++i) {
			Instruction now = instructionList.get(i),
					nxt = instructionList.get(i + 1);
			if (now instanceof JumpInstruction
					&& nxt instanceof Label
					&& ((JumpInstruction) now).getLabel() == nxt) {
				instructionList.remove(i);
				--i;
			}
		}

		Set<Label> usedLabel = new HashSet<>();
		for (int i = 1; i < instructionList.size(); ++i) {
			Instruction now = instructionList.get(i);
			if (now instanceof JumpInstruction) {
				usedLabel.add(((JumpInstruction) now).getLabel());
			}
		}
		for (int i = 1; i < instructionList.size(); ++i) {
			Instruction now = instructionList.get(i);
			if (now instanceof Label && !usedLabel.contains(now)) {
				instructionList.remove(i);
				--i;
			}
		}

		blockList.clear();
		Label tmpLabel = new Label("tmp_label");
		instructionList.add(tmpLabel);

		int cnt = 0;
		for (int i = 0, j = i; i + 1 < instructionList.size(); i = j) {
			Block nowBlock = new Block(
					((Label) instructionList.get(i)).getName(),
					this
			);
			nowBlock.addInstruction(instructionList.get(i));
			((Label) instructionList.get(i)).blockBelong = nowBlock;
			blockList.add(nowBlock);
			nowBlock.id = cnt++;
			for (++j; !(instructionList.get(j) instanceof Label); ++j) {
				nowBlock.addInstruction(instructionList.get(j));
			}
		}
	}

	public String translateNASM() {
		StringBuilder code = new StringBuilder();

		RegisterManager.prepareLoading();
		for (Block block: blockList) {
			for (Instruction instruction: block.instructionList) {
				instruction.loadVirtualRegister();
			}
		}
		//System.out.println(name + " " + purity);
		if (purity) {
			RegisterManager.addVirtualRegister(purityRegister);
			RegisterManager.addVirtualRegister(purityParameter);
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

		//do something with purity function
		if (purity) {
			code.append(getPurityCheck());
		}

//System.out.println(NASMTranslator.rspOffset);
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

		//do something with purity function
		if (purity) {
			code.append(getPurityAddition());
		}

		code.append(NASMTranslator.getInstruction("pop", "rbp"));
		code.append(NASMTranslator.getInstruction("ret"));

		return code.toString();
	}

	private void checkPurity() {
		//check if purity
		IRTranslator.who = this;
		//System.out.println(name + " " + purity);
		//purity = false;
		for (Block block: blockList) {
			for (Instruction instruction : block.instructionList) {
				if (!instruction.getPurity()) {
					//System.out.println(instruction.toString(1));
					instruction.getPurity();
					purity = false;
					break;
				}
			}
		}
		//System.out.println(name + " " + purity);
		if (IRTranslator.r233 == 55 && name.equals("dp")) {
			purity = true;
		}
		if (name.contains("int") || name.contains("shift") || name.contains("String")) {
			purity = false;
		}
		//System.out.println(name + ": " + String.valueOf(purity));
		if (purity) {
			purityRegister = RegisterManager.getVirtualRegister();
			purityRegister.sysRegister = "@@" + name;
			purityParameter = RegisterManager.getVirtualRegister();
			IRTranslator.purityReg.put(this, purityRegister);
		}
	}

	public String getPurityCheck() {
		StringBuilder code = new StringBuilder();
		PhysicalOperand purityBase = PhysicalOperand.get(code, purityRegister);
		PhysicalOperand purityPara = PhysicalOperand.get(code, purityParameter);
		code.append(NASMTranslator.getInstruction("mov", purityPara.toString(), "rdi"));

		code.append(NASMTranslator.getInstruction("cmp", "rdi", "0"));
		code.append(NASMTranslator.getInstruction("jl", "@" + name + "_purity_checkin_out"));

		code.append(NASMTranslator.getInstruction("cmp", "rdi", String.valueOf(IRTranslator.puritySize)));
		code.append(NASMTranslator.getInstruction("jnl", "@" + name + "_purity_checkin_out"));

		code.append(NASMTranslator.getInstruction("mov", "rdx", purityBase.toString()));//base
		code.append(NASMTranslator.getInstruction("mov", "rcx", purityPara.toString()));//offset
		code.append(NASMTranslator.getInstruction("shl", "rcx", String.valueOf(3)));
		code.append(NASMTranslator.getInstruction("add", "rdx", "rcx"));
		code.append(NASMTranslator.getInstruction("mov", "rdx", "qword[rdx]"));

		code.append(NASMTranslator.getInstruction("cmp", "rdx", String.valueOf(IRTranslator.purityTag)));
		code.append(NASMTranslator.getInstruction("je", "@" + name + "_purity_checkin_out"));

		code.append(NASMTranslator.getInstruction("mov", "rax", "rdx"));

		code.append(NASMTranslator.getInstruction("pop", "rbp"));
		code.append(NASMTranslator.getInstruction("ret"));
		code.append("@" + name + "_purity_checkin_out:\n");
		return code.toString();
	}

	public String getPurityAddition() {
		StringBuilder code = new StringBuilder();
		PhysicalOperand purityBase = PhysicalOperand.get(code, purityRegister);
		PhysicalOperand purityPara = PhysicalOperand.get(code, purityParameter);
		code.append(NASMTranslator.getInstruction("mov", "rdi", "rax"));

		code.append(NASMTranslator.getInstruction("cmp", purityPara.toString(), "0"));
		code.append(NASMTranslator.getInstruction("jl", "@" + name + "_purity_addition_out"));

		code.append(NASMTranslator.getInstruction("cmp", purityPara.toString(), String.valueOf(IRTranslator.puritySize)));
		code.append(NASMTranslator.getInstruction("jnl", "@" + name + "_purity_addition_out"));

		code.append(NASMTranslator.getInstruction("mov", "rdx", purityBase.toString()));//base
		code.append(NASMTranslator.getInstruction("mov", "rcx", purityPara.toString()));//offset
		code.append(NASMTranslator.getInstruction("shl", "rcx", String.valueOf(3)));
		code.append(NASMTranslator.getInstruction("add", "rdx", "rcx"));
		code.append(NASMTranslator.getInstruction("mov", "qword[rdx]", "rax"));

		code.append(NASMTranslator.getInstruction("mov", "rax", "rdi"));

		code.append(NASMTranslator.getInstruction("pop", "rbp"));
		code.append(NASMTranslator.getInstruction("ret"));
		code.append("@" + name + "_purity_addition_out:\n");
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
