package FrontEnd.Listener;

import FrontEnd.Parser.CompilerBaseListener;
import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.tree.ParseTreeProperty;

public class BaseListener extends CompilerBaseListener {
	public static int row, column;
	static ParseTreeProperty<Object> nodes = new ParseTreeProperty();

	@Override
	public void enterEveryRule(ParserRuleContext ctx) {
		row = ctx.getStart().getLine();
		column = ctx.getStart().getCharPositionInLine();
	}

	@Override
	public void exitEveryRule(ParserRuleContext ctx) {
		row = ctx.getStart().getLine();
		column = ctx.getStart().getCharPositionInLine();
	}
}
