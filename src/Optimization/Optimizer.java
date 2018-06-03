package Optimization;

import IR.FunctionIR;
import IR.IRTranslator;

public class Optimizer {

	public static void optimizer() {
		//LiveAnalysis.GlobalAnalysis();
		for (FunctionIR functionIR: IRTranslator.functionIRMap.values()) {
			if (functionIR.getName().charAt(0) == 'm') {
				Inliner.inliner(functionIR);
				//return;
			}
		}
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
