package AST.Type;

import Utility.CompilerError;

import java.util.*;

public class ClassTable {
	private LinkedHashMap<String, ClassType> classTable;

	public ClassTable() {
		classTable = new LinkedHashMap<>();
	}

	public Map<String, ClassType> getClassTable() {
		return classTable;
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

	public String toString() {
		String str = "classTable:";
		for (Map.Entry<String, ClassType> u: classTable.entrySet()) {
			str = str.concat(" ").concat(u.getValue().toString());
		}
		return str;
	}

}
