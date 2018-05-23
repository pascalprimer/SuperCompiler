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

	public void addSymbolDeclaration(String name, VariableDeclarationStatement vds) {
		variableTable.put(name, vds);
	}

	public void addDeclaration(VariableDeclarationStatement vds) {
		String name = vds.getSymbol().getName();
		if (variableTable.containsKey(name)) {
			throw new CompilerError("identical variable names");
		}
		variableTable.put(name, vds);
	}

	public boolean checkIn(String variable) {
		return variableTable.containsKey(variable);
	}

	public VariableDeclarationStatement getDeclaration(String variable) {
		//if (variableTable.containsKey(variable)) {
			return variableTable.get(variable);
		//}
		//throw new CompilerError("Member not exist in class");
	}

	public Map<String, VariableDeclarationStatement> getVariableTable() {
		return variableTable;
	}
}
