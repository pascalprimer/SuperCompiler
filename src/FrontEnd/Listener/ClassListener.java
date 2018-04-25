package FrontEnd.Listener;


import AST.AST;
import AST.Type.ClassType;
import FrontEnd.Parser.CompilerParser;

//first
public class ClassListener extends BaseListener {

	public void print(String string) {
		System.err.println(string);
	}

	@Override
	public void enterClassDeclaration(CompilerParser.ClassDeclarationContext ctx) {
		String name = ctx.IDENTIFIER().getText();
		AST.classTable.addClass(name, new ClassType(name));
		nodes.put(ctx, AST.classTable.getClass(name));
	}
}
