package IR;

import AST.Symbol.Symbol;
import AST.Type.FunctionType;
import IR.Instruction.Instruction;
import IR.Instruction.Label;
import IR.Operand.Address;
import IR.Operand.Immediate;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;

import java.util.ArrayList;
import java.util.List;

public class FunctionIR {

	private String name;
//	private Operand returnOperand;
	private FunctionType functionType;
	private Label enterLabel, exitLabel;
	private List<Block> blockList;
	private List<Operand> parameterList;
	private VirtualRegister functionBase;

	public FunctionIR(FunctionType functionType) {
		this.name = functionType.getFullName();
		this.functionType = functionType;
		this.parameterList = new ArrayList<>();
		this.functionBase = new VirtualRegister(name + "Base");
		int cnt = 0;
		for (Symbol symbol: functionType.getParameterList()) {
//fixme first 6parameters
			symbol.operand = new Address(functionBase, new Immediate(cnt += 8));
			this.parameterList.add(symbol.operand);
		}
		buildCFG();
	}

	public void buildCFG() {
		enterLabel = new Label("enter@" + name);
		exitLabel = new Label("exit@" + name);
		Label tmpLabel = new Label("tmp_label");
		IRTranslator.exitLabel = exitLabel;

		List<Instruction> instructionList = new ArrayList<>();
		instructionList.add(enterLabel);
		functionType.getBody().translateIR(instructionList);
		instructionList.add(exitLabel);

		instructionList.add(tmpLabel);
		for (int i = 0, j = i; i < instructionList.size(); i = j) {
			Block nowBlock = new Block(
					((Label) instructionList.get(i)).getName(),
					this
			);
			for (++j; !(instructionList.get(j) instanceof Label); ++j) {
				nowBlock.addInstruction(instructionList.get(j));
			}
		}
	}

}
