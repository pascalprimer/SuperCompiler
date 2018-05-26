package FrontEnd.Listener;


import AST.AST;
import AST.Type.ClassType;
import FrontEnd.Parser.CompilerParser;
import Utility.CompilerError;

//first
public class ClassListener extends BaseListener {

	public void print(String string) {
		System.err.println(string);
	}

	@Override
	public void enterClassDeclaration(CompilerParser.ClassDeclarationContext ctx) {
		String name = ctx.IDENTIFIER().getText();
		if (name.substring(0, 1).equals("_")) {
			throw new CompilerError(name + ": first letter not _");
		}
		AST.classTable.addClass(name, new ClassType(name));
		nodes.put(ctx, AST.classTable.getClass(name));
	}
}
