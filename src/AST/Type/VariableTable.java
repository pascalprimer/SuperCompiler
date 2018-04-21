package AST.Type;

import AST.Statement.VariableDeclarationStatement;
import Utility.CompilerError;

import java.util.Map;
import java.util.HashMap;

public class VariableTable {
	private Map<String, VariableDeclarationStatement> variableTable;

	public VariableTable() {
		variableTable = new HashMap<>();
	}

	public void addMember(String name, VariableDeclarationStatement vds) {
		if (variableTable.containsKey(name)) {
			throw new CompilerError("identical variable names");
		}
		variableTable.put(name, vds);
	}
}
