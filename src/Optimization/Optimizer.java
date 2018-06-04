package Optimization;

import IR.FunctionIR;
import IR.IRTranslator;

public class Optimizer {

	public static void optimizer() {
		//LiveAnalysis.GlobalAnalysis();

//		for (FunctionIR functionIR: IRTranslator.functionIRMap.values()) {
//			NaiveOptimizer.removeUselessRegister(functionIR);
//		}

		for (int times = 1; times > 0; --times) {
			for (FunctionIR functionIR : IRTranslator.functionIRMap.values()) {
				if (functionIR.getName().charAt(0) != '_') {
					Inliner.inliner(functionIR);
					//System.out.println(functionIR.toString(1));
					//return;
				}
			}
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
			LiveAnalysis.FunctionAnalysis(functionIR);
			RegisterAllocator.LinearAllocator();
		}
	}

}
