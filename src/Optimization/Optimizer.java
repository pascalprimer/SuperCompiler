package Optimization;

import IR.FunctionIR;
import IR.IRTranslator;

public class Optimizer {

	public static void optimizer() {
		//LiveAnalysis.GlobalAnalysis();
		for (FunctionIR functionIR: IRTranslator.functionIRMap.values()) {
//			if (functionIR.getName().charAt(0) == '_') {
//				continue;
//			}
			LiveAnalysis.FunctionAnalysis(functionIR);
			RegisterAllocator.LinearAllocator();
		}
	}

}
