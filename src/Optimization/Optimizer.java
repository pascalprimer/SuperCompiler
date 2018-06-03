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
			//System.out.println(functionIR.toString(1));
			//if (functionIR.getName().charAt(0) == 't') {
				Inliner.inliner(functionIR);
				//return;
			//}
			LiveAnalysis.FunctionAnalysis(functionIR);
			RegisterAllocator.LinearAllocator();
		}
	}

}
