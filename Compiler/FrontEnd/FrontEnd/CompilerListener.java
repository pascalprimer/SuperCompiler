// Generated from /home/pascalprimer/Compiler/SuperCompiler/Compiler/src/FrontEnd/Compiler.g4 by ANTLR 4.7
package FrontEnd;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link CompilerParser}.
 */
public interface CompilerListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by the {@code printExpr}
	 * labeled alternative in {@link CompilerParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterPrintExpr(CompilerParser.PrintExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code printExpr}
	 * labeled alternative in {@link CompilerParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitPrintExpr(CompilerParser.PrintExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code assign}
	 * labeled alternative in {@link CompilerParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterAssign(CompilerParser.AssignContext ctx);
	/**
	 * Exit a parse tree produced by the {@code assign}
	 * labeled alternative in {@link CompilerParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitAssign(CompilerParser.AssignContext ctx);
	/**
	 * Enter a parse tree produced by the {@code blank}
	 * labeled alternative in {@link CompilerParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterBlank(CompilerParser.BlankContext ctx);
	/**
	 * Exit a parse tree produced by the {@code blank}
	 * labeled alternative in {@link CompilerParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitBlank(CompilerParser.BlankContext ctx);
	/**
	 * Enter a parse tree produced by the {@code parens}
	 * labeled alternative in {@link CompilerParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterParens(CompilerParser.ParensContext ctx);
	/**
	 * Exit a parse tree produced by the {@code parens}
	 * labeled alternative in {@link CompilerParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitParens(CompilerParser.ParensContext ctx);
	/**
	 * Enter a parse tree produced by the {@code pow}
	 * labeled alternative in {@link CompilerParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterPow(CompilerParser.PowContext ctx);
	/**
	 * Exit a parse tree produced by the {@code pow}
	 * labeled alternative in {@link CompilerParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitPow(CompilerParser.PowContext ctx);
	/**
	 * Enter a parse tree produced by the {@code addSub}
	 * labeled alternative in {@link CompilerParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAddSub(CompilerParser.AddSubContext ctx);
	/**
	 * Exit a parse tree produced by the {@code addSub}
	 * labeled alternative in {@link CompilerParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAddSub(CompilerParser.AddSubContext ctx);
	/**
	 * Enter a parse tree produced by the {@code id}
	 * labeled alternative in {@link CompilerParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterId(CompilerParser.IdContext ctx);
	/**
	 * Exit a parse tree produced by the {@code id}
	 * labeled alternative in {@link CompilerParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitId(CompilerParser.IdContext ctx);
	/**
	 * Enter a parse tree produced by the {@code int}
	 * labeled alternative in {@link CompilerParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterInt(CompilerParser.IntContext ctx);
	/**
	 * Exit a parse tree produced by the {@code int}
	 * labeled alternative in {@link CompilerParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitInt(CompilerParser.IntContext ctx);
	/**
	 * Enter a parse tree produced by the {@code mulDiv}
	 * labeled alternative in {@link CompilerParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterMulDiv(CompilerParser.MulDivContext ctx);
	/**
	 * Exit a parse tree produced by the {@code mulDiv}
	 * labeled alternative in {@link CompilerParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitMulDiv(CompilerParser.MulDivContext ctx);
}