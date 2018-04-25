// Generated from /home/pascalprimer/Compiler/SuperCompiler/src/FrontEnd/Parser/Compiler.g4 by ANTLR 4.7
package FrontEnd.Parser;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link CompilerParser}.
 */
public interface CompilerListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link CompilerParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(CompilerParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link CompilerParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(CompilerParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link CompilerParser#classDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterClassDeclaration(CompilerParser.ClassDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link CompilerParser#classDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitClassDeclaration(CompilerParser.ClassDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link CompilerParser#functionDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterFunctionDeclaration(CompilerParser.FunctionDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link CompilerParser#functionDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitFunctionDeclaration(CompilerParser.FunctionDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link CompilerParser#variableDeclarationStatement}.
	 * @param ctx the parse tree
	 */
	void enterVariableDeclarationStatement(CompilerParser.VariableDeclarationStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link CompilerParser#variableDeclarationStatement}.
	 * @param ctx the parse tree
	 */
	void exitVariableDeclarationStatement(CompilerParser.VariableDeclarationStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link CompilerParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatement(CompilerParser.StatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link CompilerParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatement(CompilerParser.StatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link CompilerParser#blockStatement}.
	 * @param ctx the parse tree
	 */
	void enterBlockStatement(CompilerParser.BlockStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link CompilerParser#blockStatement}.
	 * @param ctx the parse tree
	 */
	void exitBlockStatement(CompilerParser.BlockStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link CompilerParser#expressionStatement}.
	 * @param ctx the parse tree
	 */
	void enterExpressionStatement(CompilerParser.ExpressionStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link CompilerParser#expressionStatement}.
	 * @param ctx the parse tree
	 */
	void exitExpressionStatement(CompilerParser.ExpressionStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link CompilerParser#selectionStatement}.
	 * @param ctx the parse tree
	 */
	void enterSelectionStatement(CompilerParser.SelectionStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link CompilerParser#selectionStatement}.
	 * @param ctx the parse tree
	 */
	void exitSelectionStatement(CompilerParser.SelectionStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code whileStatement}
	 * labeled alternative in {@link CompilerParser#iterationStatement}.
	 * @param ctx the parse tree
	 */
	void enterWhileStatement(CompilerParser.WhileStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code whileStatement}
	 * labeled alternative in {@link CompilerParser#iterationStatement}.
	 * @param ctx the parse tree
	 */
	void exitWhileStatement(CompilerParser.WhileStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code forStatement}
	 * labeled alternative in {@link CompilerParser#iterationStatement}.
	 * @param ctx the parse tree
	 */
	void enterForStatement(CompilerParser.ForStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code forStatement}
	 * labeled alternative in {@link CompilerParser#iterationStatement}.
	 * @param ctx the parse tree
	 */
	void exitForStatement(CompilerParser.ForStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code continueStatement}
	 * labeled alternative in {@link CompilerParser#jumpStatement}.
	 * @param ctx the parse tree
	 */
	void enterContinueStatement(CompilerParser.ContinueStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code continueStatement}
	 * labeled alternative in {@link CompilerParser#jumpStatement}.
	 * @param ctx the parse tree
	 */
	void exitContinueStatement(CompilerParser.ContinueStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code breakStatement}
	 * labeled alternative in {@link CompilerParser#jumpStatement}.
	 * @param ctx the parse tree
	 */
	void enterBreakStatement(CompilerParser.BreakStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code breakStatement}
	 * labeled alternative in {@link CompilerParser#jumpStatement}.
	 * @param ctx the parse tree
	 */
	void exitBreakStatement(CompilerParser.BreakStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code returnStatement}
	 * labeled alternative in {@link CompilerParser#jumpStatement}.
	 * @param ctx the parse tree
	 */
	void enterReturnStatement(CompilerParser.ReturnStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code returnStatement}
	 * labeled alternative in {@link CompilerParser#jumpStatement}.
	 * @param ctx the parse tree
	 */
	void exitReturnStatement(CompilerParser.ReturnStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code constantExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterConstantExpression(CompilerParser.ConstantExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code constantExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitConstantExpression(CompilerParser.ConstantExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code shiftExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterShiftExpression(CompilerParser.ShiftExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code shiftExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitShiftExpression(CompilerParser.ShiftExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code arrayExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterArrayExpression(CompilerParser.ArrayExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code arrayExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitArrayExpression(CompilerParser.ArrayExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code additiveExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAdditiveExpression(CompilerParser.AdditiveExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code additiveExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAdditiveExpression(CompilerParser.AdditiveExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code xorExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterXorExpression(CompilerParser.XorExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code xorExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitXorExpression(CompilerParser.XorExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code assignExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAssignExpression(CompilerParser.AssignExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code assignExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAssignExpression(CompilerParser.AssignExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code identifierExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterIdentifierExpression(CompilerParser.IdentifierExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code identifierExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitIdentifierExpression(CompilerParser.IdentifierExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code multiplicativeExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterMultiplicativeExpression(CompilerParser.MultiplicativeExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code multiplicativeExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitMultiplicativeExpression(CompilerParser.MultiplicativeExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code logicalOrExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterLogicalOrExpression(CompilerParser.LogicalOrExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code logicalOrExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitLogicalOrExpression(CompilerParser.LogicalOrExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code newClassExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterNewClassExpression(CompilerParser.NewClassExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code newClassExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitNewClassExpression(CompilerParser.NewClassExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code orExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterOrExpression(CompilerParser.OrExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code orExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitOrExpression(CompilerParser.OrExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code andExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAndExpression(CompilerParser.AndExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code andExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAndExpression(CompilerParser.AndExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code thisExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterThisExpression(CompilerParser.ThisExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code thisExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitThisExpression(CompilerParser.ThisExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code inequalityExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterInequalityExpression(CompilerParser.InequalityExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code inequalityExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitInequalityExpression(CompilerParser.InequalityExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code equalityExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterEqualityExpression(CompilerParser.EqualityExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code equalityExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitEqualityExpression(CompilerParser.EqualityExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code logicalAndExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterLogicalAndExpression(CompilerParser.LogicalAndExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code logicalAndExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitLogicalAndExpression(CompilerParser.LogicalAndExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code fieldExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterFieldExpression(CompilerParser.FieldExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code fieldExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitFieldExpression(CompilerParser.FieldExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code functionCallExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterFunctionCallExpression(CompilerParser.FunctionCallExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code functionCallExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitFunctionCallExpression(CompilerParser.FunctionCallExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code newArrayExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterNewArrayExpression(CompilerParser.NewArrayExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code newArrayExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitNewArrayExpression(CompilerParser.NewArrayExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code unaryExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterUnaryExpression(CompilerParser.UnaryExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code unaryExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitUnaryExpression(CompilerParser.UnaryExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code subExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterSubExpression(CompilerParser.SubExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code subExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitSubExpression(CompilerParser.SubExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code postfixExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterPostfixExpression(CompilerParser.PostfixExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code postfixExpression}
	 * labeled alternative in {@link CompilerParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitPostfixExpression(CompilerParser.PostfixExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code arrayType}
	 * labeled alternative in {@link CompilerParser#type}.
	 * @param ctx the parse tree
	 */
	void enterArrayType(CompilerParser.ArrayTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code arrayType}
	 * labeled alternative in {@link CompilerParser#type}.
	 * @param ctx the parse tree
	 */
	void exitArrayType(CompilerParser.ArrayTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code intType}
	 * labeled alternative in {@link CompilerParser#type}.
	 * @param ctx the parse tree
	 */
	void enterIntType(CompilerParser.IntTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code intType}
	 * labeled alternative in {@link CompilerParser#type}.
	 * @param ctx the parse tree
	 */
	void exitIntType(CompilerParser.IntTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code stringType}
	 * labeled alternative in {@link CompilerParser#type}.
	 * @param ctx the parse tree
	 */
	void enterStringType(CompilerParser.StringTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code stringType}
	 * labeled alternative in {@link CompilerParser#type}.
	 * @param ctx the parse tree
	 */
	void exitStringType(CompilerParser.StringTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code voidType}
	 * labeled alternative in {@link CompilerParser#type}.
	 * @param ctx the parse tree
	 */
	void enterVoidType(CompilerParser.VoidTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code voidType}
	 * labeled alternative in {@link CompilerParser#type}.
	 * @param ctx the parse tree
	 */
	void exitVoidType(CompilerParser.VoidTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code boolType}
	 * labeled alternative in {@link CompilerParser#type}.
	 * @param ctx the parse tree
	 */
	void enterBoolType(CompilerParser.BoolTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code boolType}
	 * labeled alternative in {@link CompilerParser#type}.
	 * @param ctx the parse tree
	 */
	void exitBoolType(CompilerParser.BoolTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code classType}
	 * labeled alternative in {@link CompilerParser#type}.
	 * @param ctx the parse tree
	 */
	void enterClassType(CompilerParser.ClassTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code classType}
	 * labeled alternative in {@link CompilerParser#type}.
	 * @param ctx the parse tree
	 */
	void exitClassType(CompilerParser.ClassTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code boolConstant}
	 * labeled alternative in {@link CompilerParser#constant}.
	 * @param ctx the parse tree
	 */
	void enterBoolConstant(CompilerParser.BoolConstantContext ctx);
	/**
	 * Exit a parse tree produced by the {@code boolConstant}
	 * labeled alternative in {@link CompilerParser#constant}.
	 * @param ctx the parse tree
	 */
	void exitBoolConstant(CompilerParser.BoolConstantContext ctx);
	/**
	 * Enter a parse tree produced by the {@code intConstant}
	 * labeled alternative in {@link CompilerParser#constant}.
	 * @param ctx the parse tree
	 */
	void enterIntConstant(CompilerParser.IntConstantContext ctx);
	/**
	 * Exit a parse tree produced by the {@code intConstant}
	 * labeled alternative in {@link CompilerParser#constant}.
	 * @param ctx the parse tree
	 */
	void exitIntConstant(CompilerParser.IntConstantContext ctx);
	/**
	 * Enter a parse tree produced by the {@code stringConstant}
	 * labeled alternative in {@link CompilerParser#constant}.
	 * @param ctx the parse tree
	 */
	void enterStringConstant(CompilerParser.StringConstantContext ctx);
	/**
	 * Exit a parse tree produced by the {@code stringConstant}
	 * labeled alternative in {@link CompilerParser#constant}.
	 * @param ctx the parse tree
	 */
	void exitStringConstant(CompilerParser.StringConstantContext ctx);
	/**
	 * Enter a parse tree produced by the {@code nullConstant}
	 * labeled alternative in {@link CompilerParser#constant}.
	 * @param ctx the parse tree
	 */
	void enterNullConstant(CompilerParser.NullConstantContext ctx);
	/**
	 * Exit a parse tree produced by the {@code nullConstant}
	 * labeled alternative in {@link CompilerParser#constant}.
	 * @param ctx the parse tree
	 */
	void exitNullConstant(CompilerParser.NullConstantContext ctx);
}