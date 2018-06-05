package Optimization;

import IR.FunctionIR;
import IR.IRTranslator;

public class Optimizer {

	public static void optimizer() {
		for (int times = 5; times > 0; --times) {
			for (FunctionIR functionIR : IRTranslator.functionIRMap.values()) {
//System.out.println("origin" + times + "\n" + functionIR.toString(1));
				if (functionIR.getName().charAt(0) != '_') {
					Inliner.inliner(functionIR);
//System.out.println("end of inliner" + times + "\n" + functionIR.toString(1));
				}
//System.out.println("end of remove" + times + "\n" + functionIR.toString(1));
			}
		}

		for (FunctionIR functionIR: IRTranslator.functionIRMap.values()) {
			NaiveOptimizer.removeUselessRegister(functionIR);
		}

		/*for (FunctionIR functionIR : IRTranslator.functionIRMap.values()) {
			if (functionIR.getName().charAt(0) != '_') {
				functionIR.checkPurity();
				//return;
			}
		}*/
		for (FunctionIR functionIR: IRTranslator.functionIRMap.values()) {
//			if (functionIR.getName().charAt(0) == '_') {
//				continue;
//			}
			//System.out.println(functionIR.toString(1));
			NaiveOptimizer.removeUselessInstruction(functionIR);
			NaiveOptimizer.removeUselessInstruction(functionIR);
			LiveAnalysis.FunctionAnalysis(functionIR);
			RegisterAllocator.LinearAllocator();
			//System.out.println("allocater\n" + functionIR.toString(1));
		}
	}

}
