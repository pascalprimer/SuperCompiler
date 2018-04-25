package AST.Type;

import Utility.CompilerError;

import java.util.*;

public class ClassTable {
	private Map<String, ClassType> classTable;

	public ClassTable() {
		classTable = new HashMap<>();
	}

	public void addClass(String name, ClassType obj) {
		if (classTable.containsKey(name)) {
			throw new CompilerError("identical class names");
		}
		classTable.put(name, obj);
	}

	public boolean checkIn(String name) {
		return classTable.containsKey(name);
	}

	public ClassType getClass(String name) {
		if (classTable.containsKey(name)) {
			return classTable.get(name);
		}
		throw new CompilerError("No class called " + name);
	}
}
