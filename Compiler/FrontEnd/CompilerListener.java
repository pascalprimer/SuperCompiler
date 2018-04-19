// Generated from /home/pascalprimer/Compiler/SuperCompiler/Compiler/src/FrontEnd/Compiler.g4 by ANTLR 4.7
package FrontEnd;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link CompilerParser}.
 */
public interface CompilerListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link CompilerParser#shit}.
	 * @param ctx the parse tree
	 */
	void enterShit(CompilerParser.ShitContext ctx);
	/**
	 * Exit a parse tree produced by {@link CompilerParser#shit}.
	 * @param ctx the parse tree
	 */
	void exitShit(CompilerParser.ShitContext ctx);
}