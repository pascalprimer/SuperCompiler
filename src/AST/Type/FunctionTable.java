package AST.Type;

import Utility.CompilerError;

import java.util.*;

public class FunctionTable {
	private Map<String, FunctionType> functionTable;

	public FunctionTable() {
		functionTable = new LinkedHashMap<>();
	}

	public void addFunction(FunctionType obj) {
//System.err.println(obj.toString());
		if (functionTable.containsKey(obj.getName())) {
			throw new CompilerError("identical function names");
		}
		//System.out.println("fcasdfasdf: ->  " + obj.getName());
		functionTable.put(obj.getName(), obj);
		//System.out.println(obj.toString());
	}

	public boolean checkIn(String name) {
		return functionTable.containsKey(name);
	}

	public Map<String, FunctionType> getFunctionTable() {
		return functionTable;
	}

	public FunctionType getFunctionType(String name) {
		//if (functionTable.containsKey(name)) {
		//System.err.println("search for " + name);
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
