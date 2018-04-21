package AST.Type;

import Utility.CompilerError;

import java.util.*;

public class FunctionTable {
	private Map<String, FunctionType> functionTable;

	public FunctionTable() {
		functionTable = new HashMap<>();
	}

	public void addFunction(FunctionType obj) {
		if (functionTable.containsKey(obj.getName())) {
			throw new CompilerError("identical function names");
		}
		functionTable.put(obj.getName(), obj);
	}

	public boolean checkIn(String name) {
		return functionTable.containsKey(name);
	}
}
