package AST;

import AST.Type.ClassTable;
import AST.Type.FunctionTable;
import AST.Type.VariableTable;

import java.util.Stack;

public class AST {
	private ClassTable classTable;
	private FunctionTable functionTable;
	private Stack<VariableTable> temporaryVariable;
}
