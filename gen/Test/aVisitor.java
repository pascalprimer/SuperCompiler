// Generated from /home/pascalprimer/Compiler/SuperCompiler/src/Test/a.g4 by ANTLR 4.7
package Test;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link aParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface aVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link aParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(aParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link aParser#classDeclaration}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassDeclaration(aParser.ClassDeclarationContext ctx);
	/**
	 * Visit a parse tree produced by {@link aParser#functionDeclaration}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionDeclaration(aParser.FunctionDeclarationContext ctx);
	/**
	 * Visit a parse tree produced by {@link aParser#variableDeclarationStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVariableDeclarationStatement(aParser.VariableDeclarationStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link aParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStatement(aParser.StatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link aParser#blockStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBlockStatement(aParser.BlockStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link aParser#expressionStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpressionStatement(aParser.ExpressionStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link aParser#selectionStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSelectionStatement(aParser.SelectionStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code whileStatement}
	 * labeled alternative in {@link aParser#iterationStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhileStatement(aParser.WhileStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code forStatement}
	 * labeled alternative in {@link aParser#iterationStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForStatement(aParser.ForStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code continueStatement}
	 * labeled alternative in {@link aParser#jumpStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitContinueStatement(aParser.ContinueStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code breakStatement}
	 * labeled alternative in {@link aParser#jumpStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBreakStatement(aParser.BreakStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code returnStatement}
	 * labeled alternative in {@link aParser#jumpStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitReturnStatement(aParser.ReturnStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code constantExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConstantExpression(aParser.ConstantExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code shiftExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitShiftExpression(aParser.ShiftExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code additiveExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAdditiveExpression(aParser.AdditiveExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code subscriptExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSubscriptExpression(aParser.SubscriptExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code relationalExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitRelationalExpression(aParser.RelationalExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code inclusiveOrExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInclusiveOrExpression(aParser.InclusiveOrExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code newExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewExpression(aParser.NewExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code assignmentExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignmentExpression(aParser.AssignmentExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code multiplicativeExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMultiplicativeExpression(aParser.MultiplicativeExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code logicalOrExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLogicalOrExpression(aParser.LogicalOrExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code variableExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVariableExpression(aParser.VariableExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code andExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAndExpression(aParser.AndExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code exclusiveOrExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExclusiveOrExpression(aParser.ExclusiveOrExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code equalityExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEqualityExpression(aParser.EqualityExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code logicalAndExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLogicalAndExpression(aParser.LogicalAndExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code fieldExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFieldExpression(aParser.FieldExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code functionCallExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionCallExpression(aParser.FunctionCallExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code unaryExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUnaryExpression(aParser.UnaryExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code subExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSubExpression(aParser.SubExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code postfixExpression}
	 * labeled alternative in {@link aParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPostfixExpression(aParser.PostfixExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code arrayType}
	 * labeled alternative in {@link aParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArrayType(aParser.ArrayTypeContext ctx);
	/**
	 * Visit a parse tree produced by the {@code intType}
	 * labeled alternative in {@link aParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIntType(aParser.IntTypeContext ctx);
	/**
	 * Visit a parse tree produced by the {@code stringType}
	 * labeled alternative in {@link aParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStringType(aParser.StringTypeContext ctx);
	/**
	 * Visit a parse tree produced by the {@code voidType}
	 * labeled alternative in {@link aParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVoidType(aParser.VoidTypeContext ctx);
	/**
	 * Visit a parse tree produced by the {@code boolType}
	 * labeled alternative in {@link aParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBoolType(aParser.BoolTypeContext ctx);
	/**
	 * Visit a parse tree produced by the {@code classType}
	 * labeled alternative in {@link aParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassType(aParser.ClassTypeContext ctx);
	/**
	 * Visit a parse tree produced by the {@code boolConstant}
	 * labeled alternative in {@link aParser#constant}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBoolConstant(aParser.BoolConstantContext ctx);
	/**
	 * Visit a parse tree produced by the {@code intConstant}
	 * labeled alternative in {@link aParser#constant}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIntConstant(aParser.IntConstantContext ctx);
	/**
	 * Visit a parse tree produced by the {@code stringConstant}
	 * labeled alternative in {@link aParser#constant}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStringConstant(aParser.StringConstantContext ctx);
	/**
	 * Visit a parse tree produced by the {@code nullConstant}
	 * labeled alternative in {@link aParser#constant}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNullConstant(aParser.NullConstantContext ctx);
}