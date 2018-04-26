package AST.Type;

import Utility.CompilerError;

import java.util.*;

public class FunctionTable {
	private Map<String, FunctionType> functionTable;

	public FunctionTable() {
		functionTable = new HashMap<>();
	}

	public void addFunction(FunctionType obj) {
//System.err.println(obj.toString());
		if (functionTable.containsKey(obj.getName())) {
			throw new CompilerError("identical function names");
		}
		functionTable.put(obj.getName(), obj);
	}

	public boolean checkIn(String name) {
		return functionTable.containsKey(name);
	}

	public Map<String, FunctionType> getFunctionTable() {
		return functionTable;
	}

	public FunctionType getFunctionType(String name) {
		//if (functionTable.containsKey(name)) {
		return functionTable.get(name);
		//} else {
		//	throw new CompilerError("Function not found");
		//}
	}

	public String toString() {
		String str = "funcTable:";
		for (Map.Entry<String, FunctionType> u: functionTable.entrySet()) {
			str = str.concat(" ").concat(u.getValue().toString());
		}
		return str;
	}
}
