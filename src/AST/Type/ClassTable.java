package AST.Type;

import Utility.CompilerError;

import java.util.*;

public class ClassTable {
	private Map<String, ClassType> classTable;

	public ClassTable() {
		classTable = new HashMap<>();
	}

	public void addClass(ClassType obj) {
		if (classTable.containsKey(obj.getName())) {
			throw new CompilerError("identical class names");
		}
		classTable.put(obj.getName(), obj);
	}

	public boolean checkIn(String name) {
		return classTable.containsKey(name);
	}
}
