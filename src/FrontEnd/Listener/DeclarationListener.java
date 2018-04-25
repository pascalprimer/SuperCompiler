package FrontEnd.Listener;

import AST.AST;
import AST.Symbol.GlobalScope;
import AST.Symbol.Symbol;
import AST.Symbol.Type;
import AST.Type.*;
import FrontEnd.Parser.CompilerParser;
import Utility.CompilerError;
import org.antlr.v4.runtime.tree.ParseTree;

//second
public class DeclarationListener extends BaseListener {

	@Override
	public void enterProgram(CompilerParser.ProgramContext ctx) {
		AST.symbolTable.enterScope(new GlobalScope());
	}

	@Override
	public void exitProgram(CompilerParser.ProgramContext ctx) {
		boolean mainExist = false;
		for (ParseTree u: ctx.functionDeclaration()) {
			FunctionType function = (FunctionType) nodes.get(u);
			if (function.getName().equals("main")) {
				if (function.getReturnType() != IntType.getInstance()) {
					throw new CompilerError("int main required");
				}
				if (function.getParameterList().size() > 0) {
					throw new CompilerError("main() with no parameters");
				}
				mainExist = true;
			}
			AST.globalFunctionTable.addFunction(function);
			AST.symbolTable.addFunction(function);
		}
		if (!mainExist) {
			throw new CompilerError("int main() required");
		}
	}

	@Override
	public void enterClassDeclaration(CompilerParser.ClassDeclarationContext ctx) {
		ClassType classType = (ClassType) nodes.get(ctx);
		AST.symbolTable.enterScope(classType);
	}

	@Override
	public void exitClassDeclaration(CompilerParser.ClassDeclarationContext ctx) {
		ClassType classType = (ClassType) nodes.get(ctx);
		for (ParseTree u: ctx.functionDeclaration()) {
			FunctionType memberFunction = (FunctionType) nodes.get(u);
			if (memberFunction.getName() == null) {
				classType.setConstructionFunction(memberFunction);
			} else {
				classType.addFunction(memberFunction);
			}
		}
		/*for (ParseTree u: ctx.variableDeclarationStatement()) {
			VariableDeclarationStatement variableDeclarationStatement
					= (VariableDeclarationStatement)nodes.get(u);
			classType.addVariable(variableDeclarationStatement);
		}*/
		AST.symbolTable.exitScope();
	}

	@Override
	public void enterFunctionDeclaration(CompilerParser.FunctionDeclarationContext ctx) {
		FunctionType functionType;
		if (ctx.IDENTIFIER().size() < ctx.type().size()) {
			functionType = new FunctionType(null);
		} else {
			functionType = new FunctionType(ctx.IDENTIFIER(0).getText());
		}
		if (AST.symbolTable.getScope() instanceof ClassType) {
			functionType.setClassScope((ClassType) AST.symbolTable.getScope());
		}
		AST.symbolTable.enterScope(functionType);
		nodes.put(ctx, functionType);
	}

	@Override
	public void exitFunctionDeclaration(CompilerParser.FunctionDeclarationContext ctx) {
		FunctionType functionType = (FunctionType) nodes.get(ctx);
		functionType.setReturnType((Type) nodes.get(ctx.type(0)));
		//functionType.setBody((BlockStatement)nodes.get(ctx.blockStatement()));
		int delta = 0;
		if (functionType.getClassScope() != null) {
			delta = 1;
			functionType.addParameter(
					new Symbol("this",
							functionType.getClassScope(),
							functionType.getClassScope(),
							false, false
					)
			);
		}
		for (int i = 1; i < ctx.type().size(); ++i) {
			functionType.addParameter(
					new Symbol(
							ctx.IDENTIFIER(i - delta).getText(),
							(Type) nodes.get(ctx.type(i)),
							functionType.getClassScope(),
							false, false
					)
			);
		}
		if (functionType.getClassScope() == null) {
			AST.globalFunctionTable.addFunction(functionType);
		}
		AST.symbolTable.exitScope();
	}

	@Override
	public void enterVoidType(CompilerParser.VoidTypeContext ctx) {
	}

	@Override
	public void exitVoidType(CompilerParser.VoidTypeContext ctx) {
		nodes.put(ctx, VoidType.getInstance());
	}

	@Override
	public void enterIntType(CompilerParser.IntTypeContext ctx) {
	}

	@Override
	public void exitIntType(CompilerParser.IntTypeContext ctx) {
		nodes.put(ctx, IntType.getInstance());
	}

	@Override
	public void enterBoolType(CompilerParser.BoolTypeContext ctx) {
	}

	@Override
	public void exitBoolType(CompilerParser.BoolTypeContext ctx) {
		nodes.put(ctx, BoolType.getInstance());
	}

	@Override
	public void enterStringType(CompilerParser.StringTypeContext ctx) {
	}

	@Override
	public void exitStringType(CompilerParser.StringTypeContext ctx) {
		nodes.put(ctx, StringType.getInstance());
	}

	@Override
	public void enterClassType(CompilerParser.ClassTypeContext ctx) {
	}

	@Override
	public void exitClassType(CompilerParser.ClassTypeContext ctx) {
		nodes.put(ctx, AST.classTable.getClass(ctx.getText()));
	}

	@Override
	public void enterArrayType(CompilerParser.ArrayTypeContext ctx) {
	}

	@Override
	public void exitArrayType(CompilerParser.ArrayTypeContext ctx) {
		Type baseType = (Type) nodes.get(ctx.type()), arrayType;
		if (baseType instanceof ArrayType) {
			arrayType = new ArrayType(((ArrayType) baseType).getArrayType(),
					((ArrayType) baseType).getDimension());
		} else {
			arrayType = new ArrayType(baseType, 1);
		}
		nodes.put(ctx, arrayType);
	}

}