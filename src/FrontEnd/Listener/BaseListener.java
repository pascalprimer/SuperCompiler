package FrontEnd.Listener;

import AST.Symbol.Type;
import FrontEnd.Parser.CompilerBaseListener;
import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.tree.ParseTreeProperty;

public class BaseListener extends CompilerBaseListener {
	public static int row, column;
	public ParseTreeProperty<Type> returnValue = new ParseTreeProperty();

	@Override
	public void enterEveryRule(ParserRuleContext ctx) {
		row = ctx.getStart().getLine();
		column = ctx.getStart().getCharPositionInLine();
	}
}
