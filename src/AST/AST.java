package AST;

import AST.Statement.VariableDeclarationStatement;
import AST.Symbol.GlobalScope;
import AST.Symbol.Symbol;
import AST.Type.*;

import java.util.Collection;
import java.util.Map;
import java.util.Stack;

//__length__(String str)
//__substring__(str, left, right)
//__parseInt__(str)
//__ord__(str, pos)
//__size__(Array array)????????????????????????????????????

public class AST {
	public static ClassTable classTable;
	public static FunctionTable globalFunctionTable;
	public static SymbolTable symbolTable;

	public static Collection<VariableDeclarationStatement> getGlobalVariable() {
		return symbolTable.getGlobalVariable().getVariableTable().values();
	}

	public static Collection<FunctionType> getGlobalFunction() {
		return globalFunctionTable.getFunctionTable().values();
	}

	public static Collection<ClassType> getClassType() {
		return classTable.getClassTable().values();
	}

	public static void init() {
		classTable = new ClassTable();
		globalFunctionTable = new FunctionTable();
		symbolTable = new SymbolTable();
		AST.symbolTable.enterScope(new GlobalScope());
		//loading basic functions
		loadPrint();
		loadPrintln();
		loadGetString();
		loadGetInt();
		loadToString();
		load__Length__();
		load__SubString__();
		load__ParseInt__();
		load__Ord__();
		load__Size__();
		loadStringEqual();
		loadStringNotEqual();
		loadStringLess();
		loadStringLessEqual();
		loadStringGreater();
		loadStringGreaterEqual();
		loadStringConnect();
		//loadGlobalFunction();
	}

	public static void loadGlobalFunction() {
		for (FunctionType function: globalFunctionTable.getFunctionTable().values()) {
			symbolTable.addFunction(function);
		}
	}

	public static void loadStringConnect() {
		FunctionType func = new FunctionType(StringType.getInstance(),
				"__string_connect__", null);
		func.addParameter(new Symbol("left", StringType.getInstance(),
				null, false, false));
		func.addParameter(new Symbol("right", StringType.getInstance(),
				null, false, false));
		globalFunctionTable.addFunction(func);
		symbolTable.addFunction(func);
		func.setSystem();
	}

	public static void loadStringEqual() {
		FunctionType func = new FunctionType(BoolType.getInstance(),
				"__string_equal__", null);
		func.addParameter(new Symbol("left", StringType.getInstance(),
				null, false, false));
		func.addParameter(new Symbol("right", StringType.getInstance(),
				null, false, false));
		globalFunctionTable.addFunction(func);
		symbolTable.addFunction(func);
		func.setSystem();
	}

	public static void loadStringNotEqual() {
		FunctionType func = new FunctionType(BoolType.getInstance(),
				"__string_not_equal__", null);
		func.addParameter(new Symbol("left", StringType.getInstance(),
				null, false, false));
		func.addParameter(new Symbol("right", StringType.getInstance(),
				null, false, false));
		globalFunctionTable.addFunction(func);
		symbolTable.addFunction(func);
		func.setSystem();
	}

	public static void loadStringLess() {
		FunctionType func = new FunctionType(BoolType.getInstance(),
				"__string_less__", null);
		func.addParameter(new Symbol("left", StringType.getInstance(),
				null, false, false));
		func.addParameter(new Symbol("right", StringType.getInstance(),
				null, false, false));
		globalFunctionTable.addFunction(func);
		symbolTable.addFunction(func);
		func.setSystem();
	}

	public static void loadStringLessEqual() {
		FunctionType func = new FunctionType(BoolType.getInstance(),
				"__string_less_equal__", null);
		func.addParameter(new Symbol("left", StringType.getInstance(),
				null, false, false));
		func.addParameter(new Symbol("right", StringType.getInstance(),
				null, false, false));
		globalFunctionTable.addFunction(func);
		symbolTable.addFunction(func);
		func.setSystem();
	}

	public static void loadStringGreater() {
		FunctionType func = new FunctionType(BoolType.getInstance(),
				"__string_greater__", null);
		func.addParameter(new Symbol("left", StringType.getInstance(),
				null, false, false));
		func.addParameter(new Symbol("right", StringType.getInstance(),
				null, false, false));
		globalFunctionTable.addFunction(func);
		symbolTable.addFunction(func);
		func.setSystem();
	}

	public static void loadStringGreaterEqual() {
		FunctionType func = new FunctionType(BoolType.getInstance(),
				"__string_greater_equal__", null);
		func.addParameter(new Symbol("left", StringType.getInstance(),
				null, false, false));
		func.addParameter(new Symbol("right", StringType.getInstance(),
				null, false, false));
		globalFunctionTable.addFunction(func);
		symbolTable.addFunction(func);
		func.setSystem();
	}

	public static void loadPrint() {
		FunctionType func = new FunctionType(VoidType.getInstance(),
				"print", null);
		func.addParameter(new Symbol("str", StringType.getInstance(),
				null, false, false));
		globalFunctionTable.addFunction(func);
		symbolTable.addFunction(func);
		func.setSystem();
	}

	public static void loadPrintln() {
		FunctionType func = new FunctionType(VoidType.getInstance(),
				"println", null);
		func.addParameter(new Symbol("str", StringType.getInstance(),
				null, false, false));
		globalFunctionTable.addFunction(func);
		symbolTable.addFunction(func);
		func.setSystem();
	}

	public static void loadGetString() {
		FunctionType func = new FunctionType(StringType.getInstance(),
				"getString", null);
		globalFunctionTable.addFunction(func);
		symbolTable.addFunction(func);
		func.setSystem();
	}

	public static void loadGetInt() {
		FunctionType func = new FunctionType(IntType.getInstance(),
				"getInt", null);
		globalFunctionTable.addFunction(func);
		symbolTable.addFunction(func);
		func.setSystem();
	}

	public static void loadToString() {
		FunctionType func = new FunctionType(StringType.getInstance(),
				"toString", null);
		func.addParameter(new Symbol("i", IntType.getInstance(),
				null, false, false));
		globalFunctionTable.addFunction(func);
		symbolTable.addFunction(func);
		func.setSystem();
	}

	public static void load__Length__() {
		FunctionType func = new FunctionType(IntType.getInstance(),
				"__length__", null);
		func.addParameter(new Symbol("str", StringType.getInstance(),
				null, false, false));
		globalFunctionTable.addFunction(func);
		symbolTable.addFunction(func);
		func.setSystem();
	}

	public static void load__SubString__() {
		FunctionType func = new FunctionType(StringType.getInstance(),
				"__substring__", null);
		func.addParameter(new Symbol("str", StringType.getInstance(),
				null, false, false));
		func.addParameter(new Symbol("left", IntType.getInstance(),
				null, false, false));
		func.addParameter(new Symbol("right", IntType.getInstance(),
				null, false, false));
		globalFunctionTable.addFunction(func);
		symbolTable.addFunction(func);
		func.setSystem();
	}

	public static void load__ParseInt__() {
		FunctionType func = new FunctionType(IntType.getInstance(),
				"__parseInt__", null);
		func.addParameter(new Symbol("str", StringType.getInstance(),
				null, false, false));
		globalFunctionTable.addFunction(func);
		symbolTable.addFunction(func);
		func.setSystem();
	}

	public static void load__Ord__() {
		FunctionType func = new FunctionType(IntType.getInstance(),
				"__ord__", null);
		func.addParameter(new Symbol("str", StringType.getInstance(),
				null, false, false));
		func.addParameter(new Symbol("pos", IntType.getInstance(),
				null, false, false));
		globalFunctionTable.addFunction(func);
		symbolTable.addFunction(func);
		func.setSystem();
	}

	public static void load__Size__() {
		FunctionType func = new FunctionType(IntType.getInstance(),
				"__size__", null);
		func.addParameter(new Symbol("array", null,
				null, false, false));
		globalFunctionTable.addFunction(func);
		symbolTable.addFunction(func);
		func.setSystem();
	}

}
