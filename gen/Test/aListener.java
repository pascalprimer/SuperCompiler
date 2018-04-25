// Generated from /home/pascalprimer/Compiler/SuperCompiler/src/Test/a.g4 by ANTLR 4.7
package Test;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link aParser}.
 */
public interface aListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link aParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(aParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link aParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(aParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link aParser#classDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterClassDeclaration(aParser.ClassDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link aParser#classDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitClassDeclaration(aParser.ClassDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link aParser#functionDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterFunctionDeclaration(aParser.FunctionDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link aParser#functionDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitFunctionDeclaration(aParser.FunctionDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link aParser#variableDeclarationStatement}.
	 * @param ctx the parse tree
	 */
	void enterVariableDeclarationStatement(aParser.VariableDeclarationStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link aParser#variableDeclarationStatement}.
	 * @param ctx the parse tree
	 */
	void exitVariableDeclarationStatement(aParser.VariableDeclarationStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link aParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatement(aParser.StatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link aParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatement(aParser.StatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link aParser#blockStatement}.
	 * @param ctx the parse tree
	 */
	void enterBlockStatement(aParser.BlockStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link aParser#blockStatement}.
	 * @param ctx the parse tree
	 */
	void exitBlockStatement(aParser.BlockStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link aParser#expressionStatement}.
	 * @param ctx the parse tree
	 */
	void enterExpressionStatement(aParser.ExpressionStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link aParser#expressionStatement}.
	 * @param ctx the parse tree
	 */
	void exitExpressionStatement(aParser.ExpressionStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link aParser#selectionStatement}.
	 * @param ctx the parse tree
	 */
	void enterSelectionStatement(aParser.SelectionStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link aParser#selectionStatement}.
	 * @param ctx the parse tree
	 */
	void exitSelectionStatement(aParser.SelectionStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code whileStatement}
	 * labeled alternative in {@link aParser#iterationStatement}.
	 * @param ctx the parse tree
	 */
	void enterWhileStatement(aParser.WhileStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code whileStatement}
	 * labeled alternative in {@link aParser#iterationStatement}.
	 * @param ctx the parse tree
	 */
	void exitWhileStatement(aParser.WhileStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code forStatement}
	 * labeled alternative in {@link aParser#iterationStatement}.
	 * @param ctx the parse tree
	 */
	void enterForStatement(aParser.ForStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code forStatement}
	 * labeled alternative in {@link aParser#iterationStatement}.
	 * @param ctx the parse tree
	 */
	void exitForStatement(aParser.ForStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code continueStatement}
	 * labeled alternative in {@link aParser#jumpStatement}.
	 * @param ctx the parse tree
	 */
	void enterContinueStatement(aParser.ContinueStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code continueStatement}
	 * labeled alternative in {@link aParser#jumpStatement}.
	 * @param ctx the parse tree
	 */
	void exitContinueStatement(aParser.ContinueStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code breakStatement}
	 * labeled alternative in {@link aParser#jumpStatement}.
	 * @param ctx the parse tree
	 */
	void enterBreakStatement(aParser.BreakStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code breakStatement}
	 * labeled alternative in {@link aParser#jumpStatement}.
	 * @param ctx the parse tree
	 */
	void exitBreakStatement(aParser.BreakStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code returnStatement}
	 * labeled alternative in {@link aParser#jumpStatement}.
	 * @param ctx the parse tree
	 */
	void enterReturnStatement(aParser.ReturnStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code returnStatement}
	 * labeled alternative in {@link aParser#jumpStatement}.
	 * @param ctx the parse tree
	 */
	void exitReturnStatement(aParser.ReturnStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code constantExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterConstantExpression(aParser.ConstantExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code constantExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitConstantExpression(aParser.ConstantExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code shiftExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterShiftExpression(aParser.ShiftExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code shiftExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitShiftExpression(aParser.ShiftExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code additiveExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAdditiveExpression(aParser.AdditiveExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code additiveExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAdditiveExpression(aParser.AdditiveExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code subscriptExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterSubscriptExpression(aParser.SubscriptExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code subscriptExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitSubscriptExpression(aParser.SubscriptExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code relationalExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterRelationalExpression(aParser.RelationalExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code relationalExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitRelationalExpression(aParser.RelationalExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code inclusiveOrExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterInclusiveOrExpression(aParser.InclusiveOrExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code inclusiveOrExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitInclusiveOrExpression(aParser.InclusiveOrExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code newExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterNewExpression(aParser.NewExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code newExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitNewExpression(aParser.NewExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code assignmentExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAssignmentExpression(aParser.AssignmentExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code assignmentExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAssignmentExpression(aParser.AssignmentExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code multiplicativeExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterMultiplicativeExpression(aParser.MultiplicativeExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code multiplicativeExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitMultiplicativeExpression(aParser.MultiplicativeExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code logicalOrExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterLogicalOrExpression(aParser.LogicalOrExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code logicalOrExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitLogicalOrExpression(aParser.LogicalOrExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code variableExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterVariableExpression(aParser.VariableExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code variableExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitVariableExpression(aParser.VariableExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code andExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAndExpression(aParser.AndExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code andExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAndExpression(aParser.AndExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code exclusiveOrExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExclusiveOrExpression(aParser.ExclusiveOrExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code exclusiveOrExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExclusiveOrExpression(aParser.ExclusiveOrExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code equalityExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterEqualityExpression(aParser.EqualityExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code equalityExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitEqualityExpression(aParser.EqualityExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code logicalAndExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterLogicalAndExpression(aParser.LogicalAndExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code logicalAndExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitLogicalAndExpression(aParser.LogicalAndExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code fieldExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterFieldExpression(aParser.FieldExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code fieldExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitFieldExpression(aParser.FieldExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code functionCallExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterFunctionCallExpression(aParser.FunctionCallExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code functionCallExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitFunctionCallExpression(aParser.FunctionCallExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code unaryExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterUnaryExpression(aParser.UnaryExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code unaryExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitUnaryExpression(aParser.UnaryExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code subExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterSubExpression(aParser.SubExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code subExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitSubExpression(aParser.SubExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code postfixExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterPostfixExpression(aParser.PostfixExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code postfixExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitPostfixExpression(aParser.PostfixExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code arrayType}
	 * labeled alternative in {@link aParser#type}.
	 * @param ctx the parse tree
	 */
	void enterArrayType(aParser.ArrayTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code arrayType}
	 * labeled alternative in {@link aParser#type}.
	 * @param ctx the parse tree
	 */
	void exitArrayType(aParser.ArrayTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code intType}
	 * labeled alternative in {@link aParser#type}.
	 * @param ctx the parse tree
	 */
	void enterIntType(aParser.IntTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code intType}
	 * labeled alternative in {@link aParser#type}.
	 * @param ctx the parse tree
	 */
	void exitIntType(aParser.IntTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code stringType}
	 * labeled alternative in {@link aParser#type}.
	 * @param ctx the parse tree
	 */
	void enterStringType(aParser.StringTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code stringType}
	 * labeled alternative in {@link aParser#type}.
	 * @param ctx the parse tree
	 */
	void exitStringType(aParser.StringTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code voidType}
	 * labeled alternative in {@link aParser#type}.
	 * @param ctx the parse tree
	 */
	void enterVoidType(aParser.VoidTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code voidType}
	 * labeled alternative in {@link aParser#type}.
	 * @param ctx the parse tree
	 */
	void exitVoidType(aParser.VoidTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code boolType}
	 * labeled alternative in {@link aParser#type}.
	 * @param ctx the parse tree
	 */
	void enterBoolType(aParser.BoolTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code boolType}
	 * labeled alternative in {@link aParser#type}.
	 * @param ctx the parse tree
	 */
	void exitBoolType(aParser.BoolTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code classType}
	 * labeled alternative in {@link aParser#type}.
	 * @param ctx the parse tree
	 */
	void enterClassType(aParser.ClassTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code classType}
	 * labeled alternative in {@link aParser#type}.
	 * @param ctx the parse tree
	 */
	void exitClassType(aParser.ClassTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code boolConstant}
	 * labeled alternative in {@link aParser#constant}.
	 * @param ctx the parse tree
	 */
	void enterBoolConstant(aParser.BoolConstantContext ctx);
	/**
	 * Exit a parse tree produced by the {@code boolConstant}
	 * labeled alternative in {@link aParser#constant}.
	 * @param ctx the parse tree
	 */
	void exitBoolConstant(aParser.BoolConstantContext ctx);
	/**
	 * Enter a parse tree produced by the {@code intConstant}
	 * labeled alternative in {@link aParser#constant}.
	 * @param ctx the parse tree
	 */
	void enterIntConstant(aParser.IntConstantContext ctx);
	/**
	 * Exit a parse tree produced by the {@code intConstant}
	 * labeled alternative in {@link aParser#constant}.
	 * @param ctx the parse tree
	 */
	void exitIntConstant(aParser.IntConstantContext ctx);
	/**
	 * Enter a parse tree produced by the {@code stringConstant}
	 * labeled alternative in {@link aParser#constant}.
	 * @param ctx the parse tree
	 */
	void enterStringConstant(aParser.StringConstantContext ctx);
	/**
	 * Exit a parse tree produced by the {@code stringConstant}
	 * labeled alternative in {@link aParser#constant}.
	 * @param ctx the parse tree
	 */
	void exitStringConstant(aParser.StringConstantContext ctx);
	/**
	 * Enter a parse tree produced by the {@code nullConstant}
	 * labeled alternative in {@link aParser#constant}.
	 * @param ctx the parse tree
	 */
	void enterNullConstant(aParser.NullConstantContext ctx);
	/**
	 * Exit a parse tree produced by the {@code nullConstant}
	 * labeled alternative in {@link aParser#constant}.
	 * @param ctx the parse tree
	 */
	void exitNullConstant(aParser.NullConstantContext ctx);
}