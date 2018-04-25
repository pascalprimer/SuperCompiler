package AST;

import AST.Statement.IterationStatement;
import AST.Statement.VariableDeclarationStatement;
import AST.Symbol.Scope;
import AST.Symbol.Symbol;
import AST.Type.ClassType;
import AST.Type.FunctionType;
import AST.Type.VariableTable;
import Utility.CompilerError;
import javafx.util.Pair;

import java.util.*;

public class SymbolTable {

	private VariableTable globalVariable;
	private List<Map<String, Symbol>> temporarySymbol;
	private Map<String, Stack<Pair<Integer, Symbol>>> symbolWhere;
	private List<Scope> scopeStack;
	private Integer topNumber;

	public SymbolTable() {
		globalVariable = new VariableTable();
		temporarySymbol = new ArrayList<>();
		symbolWhere = new HashMap<>();
		scopeStack = new ArrayList<>();
		topNumber = new Integer(0);
	}

//	public List<Map<String, Symbol>> getTemporarySymbol() {
//		return temporarySymbol;
//	}
//
//	public List<Scope> getScopeStack() {
//		return scopeStack;
//	}
//
//	public Map<String, Stack<Integer>> getSymbolWhere() {
//		return symbolWhere;
//	}

	public VariableTable getGlobalVariable() {
		return globalVariable;
	}

	public void addGlobalVariable(VariableDeclarationStatement variableDeclarationStatement) {
		globalVariable.addDeclaration(variableDeclarationStatement);
		addSymbol(variableDeclarationStatement.getSymbol());
	}

//	public void addThis() {
//		ClassType classType = (ClassType) scopeStack.get(topNumber.intValue());
//		Symbol symbol = new Symbol(
//			"this", classType, classType, false, false
//		);
//		addTemporarySymbol(new VariableDeclarationStatement(symbol));
//	}

	public void addFunction(FunctionType functionType) {
		Symbol symbol = new Symbol(
				functionType.getName(), functionType,
				functionType.getClassScope(), false, false
		);
		Map<String, Symbol> temporaryMap = temporarySymbol.get(topNumber.intValue() - 1);
		if (temporaryMap.containsKey(functionType.getName())) {
			throw new CompilerError("Symbol already exists: " + functionType.getName());
		}
		temporaryMap.put(functionType.getName(), symbol);
		if (symbolWhere.containsKey(functionType.getName())) {
			symbolWhere.get(functionType.getName()).push(new Pair<>(topNumber, symbol));
		} else {
			Stack<Pair<Integer, Symbol>> newStack = new Stack<>();
			newStack.push(new Pair<>(topNumber, symbol));
			symbolWhere.put(functionType.getName(), newStack);
		}
	}

	public void addSymbol(Symbol symbol) {
		Map<String, Symbol> temporaryMap = temporarySymbol.get(topNumber.intValue() - 1);
		if (temporaryMap.containsKey(symbol.getName())) {
			throw new CompilerError("Symbol already exists: " + symbol.getName());
		}
		temporaryMap.put(symbol.getName(), symbol);
		if (symbolWhere.containsKey(symbol.getName())) {
			symbolWhere.get(symbol.getName()).push(new Pair<>(topNumber, symbol));
		} else {
			Stack<Pair<Integer, Symbol>> newStack = new Stack<>();
			newStack.push(new Pair<>(topNumber, symbol));
			symbolWhere.put(symbol.getName(), newStack);
		}
	}

	public void enterScope(Scope scope) {
		temporarySymbol.add(new HashMap<>());
		scopeStack.add(scope);
		topNumber = topNumber + 1;
	}

	public void exitScope() {
		int now = temporarySymbol.size();
		Map<String, Symbol> topMap = temporarySymbol.get(now - 1);
		for (Map.Entry<String, Symbol> entry: topMap.entrySet()) {
			symbolWhere.get(entry).pop();
		}
		temporarySymbol.remove(now - 1);
		scopeStack.remove(now - 1);
		topNumber = topNumber - 1;
	}

	public Scope getScope() {
		return scopeStack.get(scopeStack.size() - 1);
	}

	public Symbol getSymbol(String name) {
		if (!symbolWhere.containsKey(name)) {
			throw new CompilerError("No symbol called " + name);
		}
		return symbolWhere.get(name).peek().getValue();
		//Pair<Integer, Symbol> temp = symbolWhere.get(name).peek();
		//return new Pair<Symbol, Scope>(temp.getValue(), scopeStack.get(temp.getKey().intValue()));
	}

	public boolean ifGlobal() {
		return topNumber.intValue() == 1;
	}

	public ClassType getClassScope() {
		for (int i = topNumber.intValue() - 1; i >= 0; --i) {
			if (scopeStack.get(i) instanceof ClassType) {
				return (ClassType) scopeStack.get(i);
			}
		}
		return null;
	}

	public boolean haveIteration() {
		for (int i = topNumber.intValue() - 1; i >= 0; --i) {
			if (scopeStack.get(i) instanceof IterationStatement) {
				return true;
			}
		}
		return false;
	}

	public FunctionType getFunctionScope() {
		for (int i = topNumber.intValue() - 1; i >= 0; --i) {
			if (scopeStack.get(i) instanceof FunctionType) {
				return (FunctionType) scopeStack.get(i);
			}
		}
		throw new CompilerError("No function");
	}

	/*public boolean haveSymbol(Symbol symbol) {
		if (!variableWhere.containsKey(symbol.getName()) ||
				variableWhere.get(symbol.getName()).size() == 0) {
			return false;
		}
		return true;
	}*/

}
