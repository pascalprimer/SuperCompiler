package AST;

import AST.Symbol.Symbol;
import AST.Type.VariableTable;

import java.util.*;

public class SymbolTable {

	private VariableTable globalVariable;
	private List<Map<String, Symbol>> temporaryVarible;
	private Map<String, Stack<Integer>> variableWhere;

	public SymbolTable() {
		globalVariable = new VariableTable();
		temporaryVarible = new ArrayList<>();
		variableWhere = new HashMap<>();
	}

	public void enterScope() {
		temporaryVarible.add(new HashMap<>());
	}

	public void exitScope() {
		int now = temporaryVarible.size();
		Map<String, Symbol> topMap = temporaryVarible.get(now - 1);
		for (Map.Entry<String, Symbol> entry: topMap.entrySet()) {
			variableWhere.get(entry).pop();
		}
		temporaryVarible.remove(now - 1);
	}
}
