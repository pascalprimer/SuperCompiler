package FrontEnd.Listener;


import AST.AST;
import AST.Expression.*;
import AST.Expression.BinaryExpression.*;
import AST.Expression.UnaryExpression.*;
import AST.Expression.ConstantExpression.*;
import AST.Expression.PostfixExpression.*;
import AST.Statement.*;
import AST.Symbol.GlobalScope;
import AST.Symbol.Symbol;
import AST.Symbol.Type;
import AST.Type.ClassType;
import AST.Type.FunctionType;
import FrontEnd.Parser.CompilerParser;
import org.antlr.v4.runtime.tree.ParseTree;

import java.util.ArrayList;
import java.util.List;


//third
//load all global functions and global variables when meeting

public class StatementListener extends BaseListener {

	@Override
	public void enterProgram(CompilerParser.ProgramContext ctx) {
		AST.loadGlobalFunction();
	}

	@Override
	public void exitProgram(CompilerParser.ProgramContext ctx) {
	}

	@Override
	public void enterClassDeclaration(CompilerParser.ClassDeclarationContext ctx) {
		ClassType classType = (ClassType) nodes.get(ctx);
		AST.symbolTable.enterScope(classType);
		//classType.addVariable();
		//AST.symbolTable.addThis();
		Symbol symbol = new Symbol(
				"this", classType, classType, false, false
		);
		AST.symbolTable.addSymbol(symbol);
		if (ctx.variableDeclarationStatement().size() == 0) {
			return;
		}
		for (ParseTree u: ctx.variableDeclarationStatement()) {
			CompilerParser.VariableDeclarationStatementContext t =
					(CompilerParser.VariableDeclarationStatementContext) u;
			symbol = new Symbol(
					t.IDENTIFIER().getText(),
					(Type) nodes.get(t),
					classType,
					false,
					false
			);
			AST.symbolTable.addSymbol(symbol);
		}
	}

	@Override
	public void exitClassDeclaration(CompilerParser.ClassDeclarationContext ctx) {
		ClassType classType = (ClassType) nodes.get(ctx);
		for (ParseTree u: ctx.variableDeclarationStatement()) {
			VariableDeclarationStatement variableDeclarationStatement
					= (VariableDeclarationStatement)nodes.get(u);
			classType.addVariable(variableDeclarationStatement);
		}
		AST.symbolTable.exitScope();
	}

	@Override
	public void enterFunctionDeclaration(CompilerParser.FunctionDeclarationContext ctx) {
		FunctionType functionType = (FunctionType) nodes.get(ctx);
		AST.symbolTable.enterScope(functionType);
	}

	@Override
	public void exitFunctionDeclaration(CompilerParser.FunctionDeclarationContext ctx) {
		FunctionType functionType = (FunctionType) nodes.get(ctx);
		functionType.setBody((BlockStatement) nodes.get(ctx.blockStatement()));
		AST.symbolTable.exitScope();
	}


	@Override
	public void enterBlockStatement(CompilerParser.BlockStatementContext ctx) {
		BlockStatement blockStatement = new BlockStatement();
		AST.symbolTable.enterScope(blockStatement);
		nodes.put(ctx, blockStatement);
	}

	@Override
	public void exitBlockStatement(CompilerParser.BlockStatementContext ctx) {
		BlockStatement blockStatement = (BlockStatement) nodes.get(ctx);
		for (ParseTree u: ctx.statement()) {
			blockStatement.addStatement((Statement) nodes.get(u));
		}
		AST.symbolTable.exitScope();
	}

	@Override
	public void enterExpressionStatement(CompilerParser.ExpressionStatementContext ctx) {
	}

	@Override
	public void exitExpressionStatement(CompilerParser.ExpressionStatementContext ctx) {
		ExpressionStatement expressionStatement = new ExpressionStatement(null);
		if (ctx.expression() != null) {
			expressionStatement.setExpression((Expression) nodes.get(ctx.expression()));
		}
		nodes.put(ctx, expressionStatement);
	}

	@Override
	public void enterSelectionStatement(CompilerParser.SelectionStatementContext ctx) {
		SelectionStatement selectionStatement = new SelectionStatement();
		AST.symbolTable.enterScope(selectionStatement);
		nodes.put(ctx, selectionStatement);
	}

	@Override
	public void exitSelectionStatement(CompilerParser.SelectionStatementContext ctx) {
		SelectionStatement selectionStatement = (SelectionStatement) nodes.get(ctx);
		selectionStatement.setCondition((Expression) nodes.get(ctx.expression()));
		selectionStatement.setThenStatement((Statement) nodes.get(ctx.statement(0)));
		if (ctx.statement().size() > 1) {
			selectionStatement.setElseStatement((Statement) nodes.get(ctx.statement(1)));
		}
		AST.symbolTable.exitScope();
	}

	@Override
	public void enterForStatement(CompilerParser.ForStatementContext ctx) {
		IterationStatement iterationStatement = new IterationStatement();
		AST.symbolTable.enterScope(iterationStatement);
		nodes.put(ctx, iterationStatement);
	}

	@Override
	public void exitForStatement(CompilerParser.ForStatementContext ctx) {
		IterationStatement iterationStatement = (IterationStatement) nodes.get(ctx);
		int kind = 0;
		for (ParseTree u: ctx.children) {
			if (u.getText().equals(";")) {
				++kind;
				continue;
			}
			if (u instanceof CompilerParser.ExpressionContext) {
				if (kind == 0) {
					iterationStatement.setInitialization((Expression) nodes.get(u));
				}
				if (kind == 1) {
					iterationStatement.setTermination((Expression) nodes.get(u));
				}
				if (kind == 2) {
					iterationStatement.setOperation((Expression) nodes.get(u));
				}
			}
		}
		iterationStatement.setStatement((Statement) nodes.get(ctx.statement()));
		AST.symbolTable.exitScope();
	}

	@Override
	public void enterWhileStatement(CompilerParser.WhileStatementContext ctx) {
		IterationStatement iterationStatement = new IterationStatement();
		AST.symbolTable.enterScope(iterationStatement);
		nodes.put(ctx, iterationStatement);
	}

	@Override
	public void exitWhileStatement(CompilerParser.WhileStatementContext ctx) {
		IterationStatement iterationStatement = (IterationStatement) nodes.get(ctx);
		iterationStatement.setTermination((Expression) nodes.get(ctx.expression()));
		iterationStatement.setStatement((Statement) nodes.get(ctx.statement()));
		AST.symbolTable.exitScope();
	}

	@Override
	public void enterBreakStatement(CompilerParser.BreakStatementContext ctx) {
		BreakStatement breakStatement = new BreakStatement();
		nodes.put(ctx, breakStatement);
	}

	@Override
	public void exitBreakStatement(CompilerParser.BreakStatementContext ctx) {
	}

	@Override
	public void enterContinueStatement(CompilerParser.ContinueStatementContext ctx) {
		ContinueStatement continueStatement = new ContinueStatement();
		nodes.put(ctx, continueStatement);
	}

	@Override
	public void exitContinueStatement(CompilerParser.ContinueStatementContext ctx) {
	}

	@Override
	public void enterVariableDeclarationStatement(CompilerParser.VariableDeclarationStatementContext ctx) {
		Symbol symbol = new Symbol(
			ctx.IDENTIFIER().getText(),
			(Type) nodes.get(ctx.type()),
			AST.symbolTable.getClassScope(),
			AST.symbolTable.ifGlobal(),
			false
		);
		VariableDeclarationStatement variableDeclarationStatement
				= new VariableDeclarationStatement(symbol);
		nodes.put(ctx, variableDeclarationStatement);
	}

	@Override
	public void exitVariableDeclarationStatement(CompilerParser.VariableDeclarationStatementContext ctx) {
		VariableDeclarationStatement variableDeclarationStatement
				= (VariableDeclarationStatement) nodes.get(ctx);
		if (ctx.expression() != null) {
			variableDeclarationStatement.setDeclarationExpression(
					(Expression) nodes.get(ctx.expression())
			);
		}
		if (AST.symbolTable.getScope() instanceof GlobalScope) {
			AST.symbolTable.addGlobalVariable(variableDeclarationStatement);
		} else {
			AST.symbolTable.addSymbol(variableDeclarationStatement.getSymbol());
		}
	}

	@Override
	public void enterStatement(CompilerParser.StatementContext ctx) {
	}

	@Override
	public void exitStatement(CompilerParser.StatementContext ctx) {
		if (ctx.blockStatement() != null) {
			nodes.put(ctx, nodes.get(ctx.blockStatement()));
			return;
		}
		if (ctx.expressionStatement() != null) {
			nodes.put(ctx, nodes.get(ctx.expressionStatement()));
			return;
		}
		if (ctx.selectionStatement() != null) {
			nodes.put(ctx, nodes.get(ctx.selectionStatement()));
			return;
		}
		if (ctx.iterationStatement() != null) {
			nodes.put(ctx, nodes.get(ctx.iterationStatement()));
			return;
		}
		if (ctx.jumpStatement() != null) {
			nodes.put(ctx, nodes.get(ctx.jumpStatement()));
			return;
		}
		if (ctx.variableDeclarationStatement() != null) {
			nodes.put(ctx, nodes.get(ctx.variableDeclarationStatement()));
			return;
		}
	}

	@Override
	public void enterConstantExpression(CompilerParser.ConstantExpressionContext ctx) {
	}

	@Override
	public void exitConstantExpression(CompilerParser.ConstantExpressionContext ctx) {
		nodes.put(ctx, nodes.get(ctx.constant()));
	}

	@Override
	public void enterIdentifierExpression(CompilerParser.IdentifierExpressionContext ctx) {
	}

	@Override
	public void exitIdentifierExpression(CompilerParser.IdentifierExpressionContext ctx) {
		nodes.put(ctx, IdentifierExpression.getExpression(ctx.IDENTIFIER().getText()));
	}

	@Override
	public void enterSubExpression(CompilerParser.SubExpressionContext ctx) {
	}

	@Override
	public void exitSubExpression(CompilerParser.SubExpressionContext ctx) {
		nodes.put(ctx, SubExpression.getExpression((Expression) nodes.get(ctx.expression())));
	}

	@Override
	public void enterFunctionCallExpression(CompilerParser.FunctionCallExpressionContext ctx) {
	}

	@Override
	public void exitFunctionCallExpression(CompilerParser.FunctionCallExpressionContext ctx) {
		Expression function = (Expression) nodes.get(ctx.expression(0));
		List<Expression> parameter = new ArrayList<>();
		for (int i = 1; i < ctx.expression().size(); ++i) {
			parameter.add((Expression)nodes.get(ctx.expression(i)));
		}
		nodes.put(ctx, FunctionCallExpression.getExpression(function, parameter));
	}

	@Override
	public void enterFieldExpression(CompilerParser.FieldExpressionContext ctx) {
	}

	@Override
	public void exitFieldExpression(CompilerParser.FieldExpressionContext ctx) {
		nodes.put(
				ctx, FieldExpression.getExpression(
						(Expression) nodes.get(ctx.expression()),
						ctx.IDENTIFIER().getText()
				)
		);
	}

	@Override
	public void enterNewArrayExpression(CompilerParser.NewArrayExpressionContext ctx) {
	}

	@Override
	public void exitNewArrayExpression(CompilerParser.NewArrayExpressionContext ctx) {
		Type type = (Type) nodes.get(ctx.type());
		List<Expression> parameter = new ArrayList<>();
		boolean flag = false;
		for (ParseTree u: ctx.children) {
			if (flag) {
				flag = false;
				if (u.getText().equals("]")) {
					continue;
				}
				parameter.add((Expression) nodes.get(u));
				continue;
			}
			flag = u.getText().equals("[");
		}
		nodes.put(ctx, NewExpression.getExpression(type, parameter));
	}

	@Override
	public void enterNewClassExpression(CompilerParser.NewClassExpressionContext ctx) {
	}

	@Override
	public void exitNewClassExpression(CompilerParser.NewClassExpressionContext ctx) {
		nodes.put(ctx, NewExpression.getExpression(
				(Type) nodes.get(ctx.type()), new ArrayList<>()
		));
	}

	@Override
	public void enterArrayExpression(CompilerParser.ArrayExpressionContext ctx) {
	}

	@Override
	public void exitArrayExpression(CompilerParser.ArrayExpressionContext ctx) {
		Expression arrayExpression = ArrayExpression.getExpression(
				(Expression) nodes.get(ctx.expression(0)),
				(Expression) nodes.get(ctx.expression(1))
		);
		nodes.put(ctx, arrayExpression);
	}

	@Override
	public void enterThisExpression(CompilerParser.ThisExpressionContext ctx) {
	}

	@Override
	public void exitThisExpression(CompilerParser.ThisExpressionContext ctx) {
		Expression identifierExpression = IdentifierExpression.getExpression("this");
		Expression fieldExpression = FieldExpression.getExpression(
				identifierExpression, ctx.IDENTIFIER().getText()
		);
		nodes.put(ctx, fieldExpression);
	}

	@Override
	public void enterPostfixExpression(CompilerParser.PostfixExpressionContext ctx) {
	}

	@Override
	public void exitPostfixExpression(CompilerParser.PostfixExpressionContext ctx) {
		Expression expression;
		if (ctx.operator.getText().equals("++")) {
			expression = PostfixAddExpression.getExpression(
					(Expression) nodes.get(ctx.expression())
			);
		} else {
			expression = PostfixSubtractExpression.getExpression(
					(Expression) nodes.get(ctx.expression())
			);
		}
		nodes.put(ctx, expression);
	}

	@Override
	public void enterUnaryExpression(CompilerParser.UnaryExpressionContext ctx) {
	}

	@Override
	public void exitUnaryExpression(CompilerParser.UnaryExpressionContext ctx) {
		Expression expression;
		if (ctx.operator.getText().equals("+")) {
			expression = (Expression) nodes.get(ctx.expression());
		} else if (ctx.operator.getText().equals("-")) {
			expression = UnaryNegativeExpression.getExpression(
					(Expression) nodes.get(ctx.expression())
			);
		} else if (ctx.operator.getText().equals("~")) {
			expression = UnaryReverseExpression.getExpression(
					(Expression) nodes.get(ctx.expression())
			);
		} else if (ctx.operator.getText().equals("!")) {
			expression = UnaryNotExpression.getExpression(
					(Expression) nodes.get(ctx.expression())
			);
		} else if (ctx.operator.getText().equals("++")) {
			expression = UnaryAddExpression.getExpression(
					(Expression) nodes.get(ctx.expression())
			);
		} else {
			expression = UnarySubtractExpression.getExpression(
					(Expression) nodes.get(ctx.expression())
			);
		}
		nodes.put(ctx, expression);
	}

	@Override
	public void enterMultiplicativeExpression(CompilerParser.MultiplicativeExpressionContext ctx) {
	}

	@Override
	public void exitMultiplicativeExpression(CompilerParser.MultiplicativeExpressionContext ctx) {
		Expression expression;
		if (ctx.operator.getText().equals("*")) {
			expression = BinaryMultiplyExpression.getExpression(
					(Expression) nodes.get(ctx.expression(0)),
					(Expression) nodes.get(ctx.expression(1))
			);
		} else if (ctx.operator.getText().equals("/")) {
			expression = BinaryDivideExpression.getExpression(
					(Expression) nodes.get(ctx.expression(0)),
					(Expression) nodes.get(ctx.expression(1))
			);
		} else {
			expression = BinaryModuleExpression.getExpression(
					(Expression) nodes.get(ctx.expression(0)),
					(Expression) nodes.get(ctx.expression(1))
			);
		}
		nodes.put(ctx, expression);
	}

	@Override
	public void enterAdditiveExpression(CompilerParser.AdditiveExpressionContext ctx) {
	}

	@Override
	public void exitAdditiveExpression(CompilerParser.AdditiveExpressionContext ctx) {
		Expression expression;
		if (ctx.operator.getText().equals("+")) {
			expression = BinaryAddExpression.getExpression(
					(Expression) nodes.get(ctx.expression(0)),
					(Expression) nodes.get(ctx.expression(1))
			);
		} else {
			expression = BinarySubTractExpression.getExpression(
					(Expression) nodes.get(ctx.expression(0)),
					(Expression) nodes.get(ctx.expression(1))
			);
		}
		nodes.put(ctx, expression);
	}

	@Override
	public void enterEqualityExpression(CompilerParser.EqualityExpressionContext ctx) {
	}

	@Override
	public void exitEqualityExpression(CompilerParser.EqualityExpressionContext ctx) {
		Expression expression;
		if (ctx.operator.getText().equals("==")) {
			expression = BinaryEqualExpression.getExpression(
					(Expression) nodes.get(ctx.expression(0)),
					(Expression) nodes.get(ctx.expression(1))
			);
		} else {
			expression = BinaryUnequalExpression.getExpression(
					(Expression) nodes.get(ctx.expression(0)),
					(Expression) nodes.get(ctx.expression(1))
			);
		}
		nodes.put(ctx, expression);
	}

	@Override
	public void enterInequalityExpression(CompilerParser.InequalityExpressionContext ctx) {
	}

	@Override
	public void exitInequalityExpression(CompilerParser.InequalityExpressionContext ctx) {
		Expression expression;
		if (ctx.operator.getText().equals("<")) {
			expression = BinaryLessExpression.getExpression(
					(Expression) nodes.get(ctx.expression(0)),
					(Expression) nodes.get(ctx.expression(1))
			);
		} else if (ctx.operator.getText().equals("<=")) {
			expression = BinaryLessEqualExpression.getExpression(
					(Expression) nodes.get(ctx.expression(0)),
					(Expression) nodes.get(ctx.expression(1))
			);
		} else if (ctx.operator.getText().equals(">")) {
			expression = BinaryGreaterExpression.getExpression(
					(Expression) nodes.get(ctx.expression(0)),
					(Expression) nodes.get(ctx.expression(1))
			);
		} else {
			expression = BinaryGreaterEqualExpression.getExpression(
					(Expression) nodes.get(ctx.expression(0)),
					(Expression) nodes.get(ctx.expression(1))
			);
		}
		nodes.put(ctx, expression);
	}

	@Override
	public void enterShiftExpression(CompilerParser.ShiftExpressionContext ctx) {
	}

	@Override
	public void exitShiftExpression(CompilerParser.ShiftExpressionContext ctx) {
		Expression expression;
		if (ctx.operator.getText().equals("<<")) {
			expression = BinarySHLExpression.getExpression(
					(Expression) nodes.get(ctx.expression(0)),
					(Expression) nodes.get(ctx.expression(1))
			);
		} else {
			expression = BinarySHRExpression.getExpression(
					(Expression) nodes.get(ctx.expression(0)),
					(Expression) nodes.get(ctx.expression(1))
			);
		}
		nodes.put(ctx, expression);
	}

	@Override
	public void enterAndExpression(CompilerParser.AndExpressionContext ctx) {
	}

	@Override
	public void exitAndExpression(CompilerParser.AndExpressionContext ctx) {
		Expression expression = BinaryAndExpression.getExpression(
				(Expression) nodes.get(ctx.expression(0)),
				(Expression) nodes.get(ctx.expression(1))
		);
		nodes.put(ctx, expression);
	}

	@Override
	public void enterOrExpression(CompilerParser.OrExpressionContext ctx) {
	}

	@Override
	public void exitOrExpression(CompilerParser.OrExpressionContext ctx) {
		Expression expression = BinaryOrExpression.getExpression(
				(Expression) nodes.get(ctx.expression(0)),
				(Expression) nodes.get(ctx.expression(1))
		);
		nodes.put(ctx, expression);
	}

	@Override
	public void enterXorExpression(CompilerParser.XorExpressionContext ctx) {
	}

	@Override
	public void exitXorExpression(CompilerParser.XorExpressionContext ctx) {
		Expression expression = BinaryXorExpression.getExpression(
				(Expression) nodes.get(ctx.expression(0)),
				(Expression) nodes.get(ctx.expression(1))
		);
		nodes.put(ctx, expression);
	}

	@Override
	public void enterLogicalAndExpression(CompilerParser.LogicalAndExpressionContext ctx) {
	}

	@Override
	public void exitLogicalAndExpression(CompilerParser.LogicalAndExpressionContext ctx) {
		Expression expression = BinaryAndAndExpression.getExpression(
				(Expression) nodes.get(ctx.expression(0)),
				(Expression) nodes.get(ctx.expression(1))
		);
		nodes.put(ctx, expression);
	}

	@Override
	public void enterLogicalOrExpression(CompilerParser.LogicalOrExpressionContext ctx) {
	}

	@Override
	public void exitLogicalOrExpression(CompilerParser.LogicalOrExpressionContext ctx) {
		Expression expression = BinaryOrOrExpression.getExpression(
				(Expression) nodes.get(ctx.expression(0)),
				(Expression) nodes.get(ctx.expression(1))
		);
		nodes.put(ctx, expression);
	}

	@Override
	public void enterAssignExpression(CompilerParser.AssignExpressionContext ctx) {
	}

	@Override
	public void exitAssignExpression(CompilerParser.AssignExpressionContext ctx) {
		Expression expression = AssignExpression.getExpression(
				(Expression) nodes.get(ctx.expression(0)),
				(Expression) nodes.get(ctx.expression(1))
		);
		nodes.put(ctx, expression);
	}

	@Override
	public void enterBoolConstant(CompilerParser.BoolConstantContext ctx) {
	}

	@Override
	public void exitBoolConstant(CompilerParser.BoolConstantContext ctx) {
		BoolConstant boolConstant = new BoolConstant(ctx.getText().equals("true"));
		nodes.put(ctx, boolConstant);
	}

	@Override
	public void enterIntConstant(CompilerParser.IntConstantContext ctx) {
	}

	@Override
	public void exitIntConstant(CompilerParser.IntConstantContext ctx) {
		IntConstant intConstant = new IntConstant(Integer.valueOf(ctx.getText()).intValue());
		nodes.put(ctx, intConstant);
	}

	@Override
	public void enterStringConstant(CompilerParser.StringConstantContext ctx) {
	}

	@Override
	public void exitStringConstant(CompilerParser.StringConstantContext ctx) {
		StringConstant stringConstant = new StringConstant(ctx.getText());
		nodes.put(ctx, stringConstant);
	}

	@Override
	public void enterNullConstant(CompilerParser.NullConstantContext ctx) {
	}

	@Override
	public void exitNullConstant(CompilerParser.NullConstantContext ctx) {
		nodes.put(ctx, new NullConstant());
	}
}
