// Generated from /home/pascalprimer/Compiler/SuperCompiler/src/FrontEnd/Parser/Compiler.g4 by ANTLR 4.7
package FrontEnd.Parser;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class CompilerParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.7", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, T__32=33, T__33=34, T__34=35, T__35=36, T__36=37, T__37=38, 
		T__38=39, T__39=40, T__40=41, T__41=42, T__42=43, T__43=44, T__44=45, 
		T__45=46, T__46=47, T__47=48, T__48=49, T__49=50, IDENTIFIER=51, INTEGER=52, 
		STRING=53, LINECOMMENT=54, BLOCKCOMMENT=55, WHITESPACE=56;
	public static final int
		RULE_program = 0, RULE_classDeclaration = 1, RULE_functionDeclaration = 2, 
		RULE_variableDeclarationStatement = 3, RULE_statement = 4, RULE_blockStatement = 5, 
		RULE_expressionStatement = 6, RULE_selectionStatement = 7, RULE_iterationStatement = 8, 
		RULE_jumpStatement = 9, RULE_expression = 10, RULE_type = 11, RULE_nonArrayType = 12, 
		RULE_arrayType = 13, RULE_constant = 14;
	public static final String[] ruleNames = {
		"program", "classDeclaration", "functionDeclaration", "variableDeclarationStatement", 
		"statement", "blockStatement", "expressionStatement", "selectionStatement", 
		"iterationStatement", "jumpStatement", "expression", "type", "nonArrayType", 
		"arrayType", "constant"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'class'", "'{'", "'}'", "'('", "','", "')'", "'='", "';'", "'if'", 
		"'else'", "'while'", "'for'", "'continue'", "'break'", "'return'", "'++'", 
		"'--'", "'.'", "'new'", "'['", "']'", "'[]'", "'this'", "'+'", "'-'", 
		"'~'", "'!'", "'*'", "'/'", "'%'", "'=='", "'!='", "'<'", "'<='", "'>'", 
		"'>='", "'<<'", "'>>'", "'&'", "'|'", "'^'", "'&&'", "'||'", "'void'", 
		"'int'", "'bool'", "'string'", "'true'", "'false'", "'null'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, "IDENTIFIER", "INTEGER", "STRING", "LINECOMMENT", "BLOCKCOMMENT", 
		"WHITESPACE"
	};
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Compiler.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public CompilerParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class ProgramContext extends ParserRuleContext {
		public List<ClassDeclarationContext> classDeclaration() {
			return getRuleContexts(ClassDeclarationContext.class);
		}
		public ClassDeclarationContext classDeclaration(int i) {
			return getRuleContext(ClassDeclarationContext.class,i);
		}
		public List<FunctionDeclarationContext> functionDeclaration() {
			return getRuleContexts(FunctionDeclarationContext.class);
		}
		public FunctionDeclarationContext functionDeclaration(int i) {
			return getRuleContext(FunctionDeclarationContext.class,i);
		}
		public List<VariableDeclarationStatementContext> variableDeclarationStatement() {
			return getRuleContexts(VariableDeclarationStatementContext.class);
		}
		public VariableDeclarationStatementContext variableDeclarationStatement(int i) {
			return getRuleContext(VariableDeclarationStatementContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitProgram(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(33); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				setState(33);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,0,_ctx) ) {
				case 1:
					{
					setState(30);
					classDeclaration();
					}
					break;
				case 2:
					{
					setState(31);
					functionDeclaration();
					}
					break;
				case 3:
					{
					setState(32);
					variableDeclarationStatement();
					}
					break;
				}
				}
				setState(35); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__43) | (1L << T__44) | (1L << T__45) | (1L << T__46) | (1L << IDENTIFIER))) != 0) );
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ClassDeclarationContext extends ParserRuleContext {
		public TerminalNode IDENTIFIER() { return getToken(CompilerParser.IDENTIFIER, 0); }
		public List<FunctionDeclarationContext> functionDeclaration() {
			return getRuleContexts(FunctionDeclarationContext.class);
		}
		public FunctionDeclarationContext functionDeclaration(int i) {
			return getRuleContext(FunctionDeclarationContext.class,i);
		}
		public List<VariableDeclarationStatementContext> variableDeclarationStatement() {
			return getRuleContexts(VariableDeclarationStatementContext.class);
		}
		public VariableDeclarationStatementContext variableDeclarationStatement(int i) {
			return getRuleContext(VariableDeclarationStatementContext.class,i);
		}
		public ClassDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classDeclaration; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterClassDeclaration(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitClassDeclaration(this);
		}
	}

	public final ClassDeclarationContext classDeclaration() throws RecognitionException {
		ClassDeclarationContext _localctx = new ClassDeclarationContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_classDeclaration);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(37);
			match(T__0);
			setState(38);
			match(IDENTIFIER);
			setState(39);
			match(T__1);
			setState(44);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__43) | (1L << T__44) | (1L << T__45) | (1L << T__46) | (1L << IDENTIFIER))) != 0)) {
				{
				setState(42);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,2,_ctx) ) {
				case 1:
					{
					setState(40);
					functionDeclaration();
					}
					break;
				case 2:
					{
					setState(41);
					variableDeclarationStatement();
					}
					break;
				}
				}
				setState(46);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(47);
			match(T__2);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionDeclarationContext extends ParserRuleContext {
		public List<TypeContext> type() {
			return getRuleContexts(TypeContext.class);
		}
		public TypeContext type(int i) {
			return getRuleContext(TypeContext.class,i);
		}
		public BlockStatementContext blockStatement() {
			return getRuleContext(BlockStatementContext.class,0);
		}
		public List<TerminalNode> IDENTIFIER() { return getTokens(CompilerParser.IDENTIFIER); }
		public TerminalNode IDENTIFIER(int i) {
			return getToken(CompilerParser.IDENTIFIER, i);
		}
		public FunctionDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionDeclaration; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterFunctionDeclaration(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitFunctionDeclaration(this);
		}
	}

	public final FunctionDeclarationContext functionDeclaration() throws RecognitionException {
		FunctionDeclarationContext _localctx = new FunctionDeclarationContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_functionDeclaration);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(49);
			type();
			setState(51);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==IDENTIFIER) {
				{
				setState(50);
				match(IDENTIFIER);
				}
			}

			setState(53);
			match(T__3);
			setState(65);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__43) | (1L << T__44) | (1L << T__45) | (1L << T__46) | (1L << IDENTIFIER))) != 0)) {
				{
				setState(54);
				type();
				setState(55);
				match(IDENTIFIER);
				setState(62);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__4) {
					{
					{
					setState(56);
					match(T__4);
					setState(57);
					type();
					setState(58);
					match(IDENTIFIER);
					}
					}
					setState(64);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(67);
			match(T__5);
			setState(68);
			blockStatement();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VariableDeclarationStatementContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode IDENTIFIER() { return getToken(CompilerParser.IDENTIFIER, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public VariableDeclarationStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variableDeclarationStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterVariableDeclarationStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitVariableDeclarationStatement(this);
		}
	}

	public final VariableDeclarationStatementContext variableDeclarationStatement() throws RecognitionException {
		VariableDeclarationStatementContext _localctx = new VariableDeclarationStatementContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_variableDeclarationStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(70);
			type();
			setState(71);
			match(IDENTIFIER);
			setState(74);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__6) {
				{
				setState(72);
				match(T__6);
				setState(73);
				expression(0);
				}
			}

			setState(76);
			match(T__7);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StatementContext extends ParserRuleContext {
		public BlockStatementContext blockStatement() {
			return getRuleContext(BlockStatementContext.class,0);
		}
		public ExpressionStatementContext expressionStatement() {
			return getRuleContext(ExpressionStatementContext.class,0);
		}
		public SelectionStatementContext selectionStatement() {
			return getRuleContext(SelectionStatementContext.class,0);
		}
		public IterationStatementContext iterationStatement() {
			return getRuleContext(IterationStatementContext.class,0);
		}
		public JumpStatementContext jumpStatement() {
			return getRuleContext(JumpStatementContext.class,0);
		}
		public VariableDeclarationStatementContext variableDeclarationStatement() {
			return getRuleContext(VariableDeclarationStatementContext.class,0);
		}
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitStatement(this);
		}
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_statement);
		try {
			setState(84);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,8,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(78);
				blockStatement();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(79);
				expressionStatement();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(80);
				selectionStatement();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(81);
				iterationStatement();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(82);
				jumpStatement();
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(83);
				variableDeclarationStatement();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BlockStatementContext extends ParserRuleContext {
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public BlockStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_blockStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterBlockStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitBlockStatement(this);
		}
	}

	public final BlockStatementContext blockStatement() throws RecognitionException {
		BlockStatementContext _localctx = new BlockStatementContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_blockStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(86);
			match(T__1);
			setState(90);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__1) | (1L << T__3) | (1L << T__7) | (1L << T__8) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__18) | (1L << T__22) | (1L << T__23) | (1L << T__24) | (1L << T__25) | (1L << T__26) | (1L << T__43) | (1L << T__44) | (1L << T__45) | (1L << T__46) | (1L << T__47) | (1L << T__48) | (1L << T__49) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
				{
				{
				setState(87);
				statement();
				}
				}
				setState(92);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(93);
			match(T__2);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionStatementContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ExpressionStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expressionStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterExpressionStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitExpressionStatement(this);
		}
	}

	public final ExpressionStatementContext expressionStatement() throws RecognitionException {
		ExpressionStatementContext _localctx = new ExpressionStatementContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_expressionStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(96);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__3) | (1L << T__15) | (1L << T__16) | (1L << T__18) | (1L << T__22) | (1L << T__23) | (1L << T__24) | (1L << T__25) | (1L << T__26) | (1L << T__47) | (1L << T__48) | (1L << T__49) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
				{
				setState(95);
				expression(0);
				}
			}

			setState(98);
			match(T__7);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SelectionStatementContext extends ParserRuleContext {
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public SelectionStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_selectionStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterSelectionStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitSelectionStatement(this);
		}
	}

	public final SelectionStatementContext selectionStatement() throws RecognitionException {
		SelectionStatementContext _localctx = new SelectionStatementContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_selectionStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(100);
			match(T__8);
			setState(101);
			match(T__3);
			setState(102);
			statement();
			setState(103);
			match(T__5);
			setState(104);
			statement();
			setState(107);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,11,_ctx) ) {
			case 1:
				{
				setState(105);
				match(T__9);
				setState(106);
				statement();
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class IterationStatementContext extends ParserRuleContext {
		public IterationStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_iterationStatement; }
	 
		public IterationStatementContext() { }
		public void copyFrom(IterationStatementContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class WhileStatementContext extends IterationStatementContext {
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public WhileStatementContext(IterationStatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterWhileStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitWhileStatement(this);
		}
	}
	public static class ForStatementContext extends IterationStatementContext {
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ForStatementContext(IterationStatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterForStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitForStatement(this);
		}
	}

	public final IterationStatementContext iterationStatement() throws RecognitionException {
		IterationStatementContext _localctx = new IterationStatementContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_iterationStatement);
		int _la;
		try {
			setState(130);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__10:
				_localctx = new WhileStatementContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(109);
				match(T__10);
				setState(110);
				match(T__3);
				setState(111);
				statement();
				setState(112);
				match(T__5);
				setState(113);
				statement();
				}
				break;
			case T__11:
				_localctx = new ForStatementContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(115);
				match(T__11);
				setState(116);
				match(T__3);
				setState(118);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__3) | (1L << T__15) | (1L << T__16) | (1L << T__18) | (1L << T__22) | (1L << T__23) | (1L << T__24) | (1L << T__25) | (1L << T__26) | (1L << T__47) | (1L << T__48) | (1L << T__49) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
					{
					setState(117);
					expression(0);
					}
				}

				setState(120);
				match(T__7);
				setState(122);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__3) | (1L << T__15) | (1L << T__16) | (1L << T__18) | (1L << T__22) | (1L << T__23) | (1L << T__24) | (1L << T__25) | (1L << T__26) | (1L << T__47) | (1L << T__48) | (1L << T__49) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
					{
					setState(121);
					expression(0);
					}
				}

				setState(124);
				match(T__7);
				setState(126);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__3) | (1L << T__15) | (1L << T__16) | (1L << T__18) | (1L << T__22) | (1L << T__23) | (1L << T__24) | (1L << T__25) | (1L << T__26) | (1L << T__47) | (1L << T__48) | (1L << T__49) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
					{
					setState(125);
					expression(0);
					}
				}

				setState(128);
				match(T__5);
				setState(129);
				statement();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class JumpStatementContext extends ParserRuleContext {
		public JumpStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_jumpStatement; }
	 
		public JumpStatementContext() { }
		public void copyFrom(JumpStatementContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class BreakStatementContext extends JumpStatementContext {
		public BreakStatementContext(JumpStatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterBreakStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitBreakStatement(this);
		}
	}
	public static class ContinueStatementContext extends JumpStatementContext {
		public ContinueStatementContext(JumpStatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterContinueStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitContinueStatement(this);
		}
	}
	public static class ReturnStatementContext extends JumpStatementContext {
		public ReturnStatementContext(JumpStatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterReturnStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitReturnStatement(this);
		}
	}

	public final JumpStatementContext jumpStatement() throws RecognitionException {
		JumpStatementContext _localctx = new JumpStatementContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_jumpStatement);
		try {
			setState(138);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__12:
				_localctx = new ContinueStatementContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(132);
				match(T__12);
				setState(133);
				match(T__7);
				}
				break;
			case T__13:
				_localctx = new BreakStatementContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(134);
				match(T__13);
				setState(135);
				match(T__7);
				}
				break;
			case T__14:
				_localctx = new ReturnStatementContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(136);
				match(T__14);
				setState(137);
				match(T__7);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionContext extends ParserRuleContext {
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
	 
		public ExpressionContext() { }
		public void copyFrom(ExpressionContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class ConstantExpressionContext extends ExpressionContext {
		public ConstantContext constant() {
			return getRuleContext(ConstantContext.class,0);
		}
		public ConstantExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterConstantExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitConstantExpression(this);
		}
	}
	public static class ShiftExpressionContext extends ExpressionContext {
		public Token operator;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ShiftExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterShiftExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitShiftExpression(this);
		}
	}
	public static class ArrayExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ArrayExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterArrayExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitArrayExpression(this);
		}
	}
	public static class AdditiveExpressionContext extends ExpressionContext {
		public Token operator;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public AdditiveExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterAdditiveExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitAdditiveExpression(this);
		}
	}
	public static class XorExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public XorExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterXorExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitXorExpression(this);
		}
	}
	public static class NewExpressionContext extends ExpressionContext {
		public NonArrayTypeContext nonArrayType() {
			return getRuleContext(NonArrayTypeContext.class,0);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public NewExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterNewExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitNewExpression(this);
		}
	}
	public static class AssignExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public AssignExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterAssignExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitAssignExpression(this);
		}
	}
	public static class MultiplicativeExpressionContext extends ExpressionContext {
		public Token operator;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public MultiplicativeExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterMultiplicativeExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitMultiplicativeExpression(this);
		}
	}
	public static class LogicalOrExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public LogicalOrExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterLogicalOrExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitLogicalOrExpression(this);
		}
	}
	public static class VariableExpressionContext extends ExpressionContext {
		public TerminalNode IDENTIFIER() { return getToken(CompilerParser.IDENTIFIER, 0); }
		public VariableExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterVariableExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitVariableExpression(this);
		}
	}
	public static class OrExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public OrExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterOrExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitOrExpression(this);
		}
	}
	public static class AndExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public AndExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterAndExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitAndExpression(this);
		}
	}
	public static class ThisExpressionContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ThisExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterThisExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitThisExpression(this);
		}
	}
	public static class InequalityExpressionContext extends ExpressionContext {
		public Token operator;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public InequalityExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterInequalityExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitInequalityExpression(this);
		}
	}
	public static class EqualityExpressionContext extends ExpressionContext {
		public Token operator;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public EqualityExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterEqualityExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitEqualityExpression(this);
		}
	}
	public static class LogicalAndExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public LogicalAndExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterLogicalAndExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitLogicalAndExpression(this);
		}
	}
	public static class FieldExpressionContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode IDENTIFIER() { return getToken(CompilerParser.IDENTIFIER, 0); }
		public FieldExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterFieldExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitFieldExpression(this);
		}
	}
	public static class FunctionCallExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public FunctionCallExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterFunctionCallExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitFunctionCallExpression(this);
		}
	}
	public static class UnaryExpressionContext extends ExpressionContext {
		public Token operator;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public UnaryExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterUnaryExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitUnaryExpression(this);
		}
	}
	public static class SubExpressionContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public SubExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterSubExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitSubExpression(this);
		}
	}
	public static class PostfixExpressionContext extends ExpressionContext {
		public Token operator;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public PostfixExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterPostfixExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitPostfixExpression(this);
		}
	}

	public final ExpressionContext expression() throws RecognitionException {
		return expression(0);
	}

	private ExpressionContext expression(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExpressionContext _localctx = new ExpressionContext(_ctx, _parentState);
		ExpressionContext _prevctx = _localctx;
		int _startState = 20;
		enterRecursionRule(_localctx, 20, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(164);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__47:
			case T__48:
			case T__49:
			case INTEGER:
			case STRING:
				{
				_localctx = new ConstantExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(141);
				constant();
				}
				break;
			case IDENTIFIER:
				{
				_localctx = new VariableExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(142);
				match(IDENTIFIER);
				}
				break;
			case T__3:
				{
				_localctx = new SubExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(143);
				match(T__3);
				setState(144);
				expression(0);
				setState(145);
				match(T__5);
				}
				break;
			case T__18:
				{
				_localctx = new NewExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(147);
				match(T__18);
				setState(148);
				nonArrayType();
				setState(155); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						setState(155);
						_errHandler.sync(this);
						switch (_input.LA(1)) {
						case T__19:
							{
							setState(149);
							match(T__19);
							setState(151);
							_errHandler.sync(this);
							_la = _input.LA(1);
							if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__3) | (1L << T__15) | (1L << T__16) | (1L << T__18) | (1L << T__22) | (1L << T__23) | (1L << T__24) | (1L << T__25) | (1L << T__26) | (1L << T__47) | (1L << T__48) | (1L << T__49) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
								{
								setState(150);
								expression(0);
								}
							}

							setState(153);
							match(T__20);
							}
							break;
						case T__21:
							{
							setState(154);
							match(T__21);
							}
							break;
						default:
							throw new NoViableAltException(this);
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(157); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,19,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				}
				break;
			case T__22:
				{
				_localctx = new ThisExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(159);
				match(T__22);
				setState(160);
				match(T__17);
				setState(161);
				expression(13);
				}
				break;
			case T__15:
			case T__16:
			case T__23:
			case T__24:
			case T__25:
			case T__26:
				{
				_localctx = new UnaryExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(162);
				((UnaryExpressionContext)_localctx).operator = _input.LT(1);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__15) | (1L << T__16) | (1L << T__23) | (1L << T__24) | (1L << T__25) | (1L << T__26))) != 0)) ) {
					((UnaryExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(163);
				expression(12);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(224);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,24,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(222);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,23,_ctx) ) {
					case 1:
						{
						_localctx = new AdditiveExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(166);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(167);
						((AdditiveExpressionContext)_localctx).operator = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__23 || _la==T__24) ) {
							((AdditiveExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(168);
						expression(12);
						}
						break;
					case 2:
						{
						_localctx = new MultiplicativeExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(169);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(170);
						((MultiplicativeExpressionContext)_localctx).operator = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__27) | (1L << T__28) | (1L << T__29))) != 0)) ) {
							((MultiplicativeExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(171);
						expression(11);
						}
						break;
					case 3:
						{
						_localctx = new EqualityExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(172);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(173);
						((EqualityExpressionContext)_localctx).operator = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__30 || _la==T__31) ) {
							((EqualityExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(174);
						expression(10);
						}
						break;
					case 4:
						{
						_localctx = new InequalityExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(175);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(176);
						((InequalityExpressionContext)_localctx).operator = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__32) | (1L << T__33) | (1L << T__34) | (1L << T__35))) != 0)) ) {
							((InequalityExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(177);
						expression(9);
						}
						break;
					case 5:
						{
						_localctx = new ShiftExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(178);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(179);
						((ShiftExpressionContext)_localctx).operator = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__36 || _la==T__37) ) {
							((ShiftExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(180);
						expression(8);
						}
						break;
					case 6:
						{
						_localctx = new AndExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(181);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(182);
						match(T__38);
						setState(183);
						expression(7);
						}
						break;
					case 7:
						{
						_localctx = new OrExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(184);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(185);
						match(T__39);
						setState(186);
						expression(6);
						}
						break;
					case 8:
						{
						_localctx = new XorExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(187);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(188);
						match(T__40);
						setState(189);
						expression(5);
						}
						break;
					case 9:
						{
						_localctx = new LogicalAndExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(190);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(191);
						match(T__41);
						setState(192);
						expression(4);
						}
						break;
					case 10:
						{
						_localctx = new LogicalOrExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(193);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(194);
						match(T__42);
						setState(195);
						expression(3);
						}
						break;
					case 11:
						{
						_localctx = new AssignExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(196);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(197);
						match(T__6);
						setState(198);
						expression(1);
						}
						break;
					case 12:
						{
						_localctx = new PostfixExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(199);
						if (!(precpred(_ctx, 18))) throw new FailedPredicateException(this, "precpred(_ctx, 18)");
						setState(200);
						((PostfixExpressionContext)_localctx).operator = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__15 || _la==T__16) ) {
							((PostfixExpressionContext)_localctx).operator = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						}
						break;
					case 13:
						{
						_localctx = new FunctionCallExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(201);
						if (!(precpred(_ctx, 17))) throw new FailedPredicateException(this, "precpred(_ctx, 17)");
						setState(202);
						match(T__3);
						setState(211);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__3) | (1L << T__15) | (1L << T__16) | (1L << T__18) | (1L << T__22) | (1L << T__23) | (1L << T__24) | (1L << T__25) | (1L << T__26) | (1L << T__47) | (1L << T__48) | (1L << T__49) | (1L << IDENTIFIER) | (1L << INTEGER) | (1L << STRING))) != 0)) {
							{
							setState(203);
							expression(0);
							setState(208);
							_errHandler.sync(this);
							_la = _input.LA(1);
							while (_la==T__4) {
								{
								{
								setState(204);
								match(T__4);
								setState(205);
								expression(0);
								}
								}
								setState(210);
								_errHandler.sync(this);
								_la = _input.LA(1);
							}
							}
						}

						setState(213);
						match(T__5);
						}
						break;
					case 14:
						{
						_localctx = new FieldExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(214);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(215);
						match(T__17);
						setState(216);
						match(IDENTIFIER);
						}
						break;
					case 15:
						{
						_localctx = new ArrayExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(217);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(218);
						match(T__19);
						setState(219);
						expression(0);
						setState(220);
						match(T__20);
						}
						break;
					}
					} 
				}
				setState(226);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,24,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class TypeContext extends ParserRuleContext {
		public NonArrayTypeContext nonArrayType() {
			return getRuleContext(NonArrayTypeContext.class,0);
		}
		public ArrayTypeContext arrayType() {
			return getRuleContext(ArrayTypeContext.class,0);
		}
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitType(this);
		}
	}

	public final TypeContext type() throws RecognitionException {
		TypeContext _localctx = new TypeContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_type);
		try {
			setState(229);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,25,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(227);
				nonArrayType();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(228);
				arrayType(0);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class NonArrayTypeContext extends ParserRuleContext {
		public NonArrayTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_nonArrayType; }
	 
		public NonArrayTypeContext() { }
		public void copyFrom(NonArrayTypeContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class IntTypeContext extends NonArrayTypeContext {
		public IntTypeContext(NonArrayTypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterIntType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitIntType(this);
		}
	}
	public static class StringTypeContext extends NonArrayTypeContext {
		public StringTypeContext(NonArrayTypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterStringType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitStringType(this);
		}
	}
	public static class VoidTypeContext extends NonArrayTypeContext {
		public VoidTypeContext(NonArrayTypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterVoidType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitVoidType(this);
		}
	}
	public static class BoolTypeContext extends NonArrayTypeContext {
		public BoolTypeContext(NonArrayTypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterBoolType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitBoolType(this);
		}
	}
	public static class ClassTypeContext extends NonArrayTypeContext {
		public TerminalNode IDENTIFIER() { return getToken(CompilerParser.IDENTIFIER, 0); }
		public ClassTypeContext(NonArrayTypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterClassType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitClassType(this);
		}
	}

	public final NonArrayTypeContext nonArrayType() throws RecognitionException {
		NonArrayTypeContext _localctx = new NonArrayTypeContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_nonArrayType);
		try {
			setState(236);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__43:
				_localctx = new VoidTypeContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(231);
				match(T__43);
				}
				break;
			case T__44:
				_localctx = new IntTypeContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(232);
				match(T__44);
				}
				break;
			case T__45:
				_localctx = new BoolTypeContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(233);
				match(T__45);
				}
				break;
			case T__46:
				_localctx = new StringTypeContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(234);
				match(T__46);
				}
				break;
			case IDENTIFIER:
				_localctx = new ClassTypeContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(235);
				match(IDENTIFIER);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ArrayTypeContext extends ParserRuleContext {
		public NonArrayTypeContext nonArrayType() {
			return getRuleContext(NonArrayTypeContext.class,0);
		}
		public ArrayTypeContext arrayType() {
			return getRuleContext(ArrayTypeContext.class,0);
		}
		public ArrayTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_arrayType; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterArrayType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitArrayType(this);
		}
	}

	public final ArrayTypeContext arrayType() throws RecognitionException {
		return arrayType(0);
	}

	private ArrayTypeContext arrayType(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ArrayTypeContext _localctx = new ArrayTypeContext(_ctx, _parentState);
		ArrayTypeContext _prevctx = _localctx;
		int _startState = 26;
		enterRecursionRule(_localctx, 26, RULE_arrayType, _p);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			{
			setState(239);
			nonArrayType();
			setState(243);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__19:
				{
				setState(240);
				match(T__19);
				setState(241);
				match(T__20);
				}
				break;
			case T__21:
				{
				setState(242);
				match(T__21);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			}
			_ctx.stop = _input.LT(-1);
			setState(253);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,29,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					{
					_localctx = new ArrayTypeContext(_parentctx, _parentState);
					pushNewRecursionContext(_localctx, _startState, RULE_arrayType);
					setState(245);
					if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
					setState(249);
					_errHandler.sync(this);
					switch (_input.LA(1)) {
					case T__19:
						{
						setState(246);
						match(T__19);
						setState(247);
						match(T__20);
						}
						break;
					case T__21:
						{
						setState(248);
						match(T__21);
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					}
					} 
				}
				setState(255);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,29,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class ConstantContext extends ParserRuleContext {
		public ConstantContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_constant; }
	 
		public ConstantContext() { }
		public void copyFrom(ConstantContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class IntConstantContext extends ConstantContext {
		public TerminalNode INTEGER() { return getToken(CompilerParser.INTEGER, 0); }
		public IntConstantContext(ConstantContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterIntConstant(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitIntConstant(this);
		}
	}
	public static class StringConstantContext extends ConstantContext {
		public TerminalNode STRING() { return getToken(CompilerParser.STRING, 0); }
		public StringConstantContext(ConstantContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterStringConstant(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitStringConstant(this);
		}
	}
	public static class NullConstantContext extends ConstantContext {
		public NullConstantContext(ConstantContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterNullConstant(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitNullConstant(this);
		}
	}
	public static class BoolConstantContext extends ConstantContext {
		public BoolConstantContext(ConstantContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).enterBoolConstant(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof CompilerListener ) ((CompilerListener)listener).exitBoolConstant(this);
		}
	}

	public final ConstantContext constant() throws RecognitionException {
		ConstantContext _localctx = new ConstantContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_constant);
		int _la;
		try {
			setState(260);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__47:
			case T__48:
				_localctx = new BoolConstantContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(256);
				_la = _input.LA(1);
				if ( !(_la==T__47 || _la==T__48) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				}
				break;
			case INTEGER:
				_localctx = new IntConstantContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(257);
				match(INTEGER);
				}
				break;
			case STRING:
				_localctx = new StringConstantContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(258);
				match(STRING);
				}
				break;
			case T__49:
				_localctx = new NullConstantContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(259);
				match(T__49);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 10:
			return expression_sempred((ExpressionContext)_localctx, predIndex);
		case 13:
			return arrayType_sempred((ArrayTypeContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expression_sempred(ExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 11);
		case 1:
			return precpred(_ctx, 10);
		case 2:
			return precpred(_ctx, 9);
		case 3:
			return precpred(_ctx, 8);
		case 4:
			return precpred(_ctx, 7);
		case 5:
			return precpred(_ctx, 6);
		case 6:
			return precpred(_ctx, 5);
		case 7:
			return precpred(_ctx, 4);
		case 8:
			return precpred(_ctx, 3);
		case 9:
			return precpred(_ctx, 2);
		case 10:
			return precpred(_ctx, 1);
		case 11:
			return precpred(_ctx, 18);
		case 12:
			return precpred(_ctx, 17);
		case 13:
			return precpred(_ctx, 16);
		case 14:
			return precpred(_ctx, 14);
		}
		return true;
	}
	private boolean arrayType_sempred(ArrayTypeContext _localctx, int predIndex) {
		switch (predIndex) {
		case 15:
			return precpred(_ctx, 1);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3:\u0109\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\3\2\3\2\3\2\6\2$\n\2"+
		"\r\2\16\2%\3\3\3\3\3\3\3\3\3\3\7\3-\n\3\f\3\16\3\60\13\3\3\3\3\3\3\4\3"+
		"\4\5\4\66\n\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\7\4?\n\4\f\4\16\4B\13\4\5\4"+
		"D\n\4\3\4\3\4\3\4\3\5\3\5\3\5\3\5\5\5M\n\5\3\5\3\5\3\6\3\6\3\6\3\6\3\6"+
		"\3\6\5\6W\n\6\3\7\3\7\7\7[\n\7\f\7\16\7^\13\7\3\7\3\7\3\b\5\bc\n\b\3\b"+
		"\3\b\3\t\3\t\3\t\3\t\3\t\3\t\3\t\5\tn\n\t\3\n\3\n\3\n\3\n\3\n\3\n\3\n"+
		"\3\n\3\n\5\ny\n\n\3\n\3\n\5\n}\n\n\3\n\3\n\5\n\u0081\n\n\3\n\3\n\5\n\u0085"+
		"\n\n\3\13\3\13\3\13\3\13\3\13\3\13\5\13\u008d\n\13\3\f\3\f\3\f\3\f\3\f"+
		"\3\f\3\f\3\f\3\f\3\f\3\f\5\f\u009a\n\f\3\f\3\f\6\f\u009e\n\f\r\f\16\f"+
		"\u009f\3\f\3\f\3\f\3\f\3\f\5\f\u00a7\n\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3"+
		"\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f"+
		"\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\7\f\u00d1"+
		"\n\f\f\f\16\f\u00d4\13\f\5\f\u00d6\n\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f"+
		"\3\f\7\f\u00e1\n\f\f\f\16\f\u00e4\13\f\3\r\3\r\5\r\u00e8\n\r\3\16\3\16"+
		"\3\16\3\16\3\16\5\16\u00ef\n\16\3\17\3\17\3\17\3\17\3\17\5\17\u00f6\n"+
		"\17\3\17\3\17\3\17\3\17\5\17\u00fc\n\17\7\17\u00fe\n\17\f\17\16\17\u0101"+
		"\13\17\3\20\3\20\3\20\3\20\5\20\u0107\n\20\3\20\2\4\26\34\21\2\4\6\b\n"+
		"\f\16\20\22\24\26\30\32\34\36\2\n\4\2\22\23\32\35\3\2\32\33\3\2\36 \3"+
		"\2!\"\3\2#&\3\2\'(\3\2\22\23\3\2\62\63\2\u0134\2#\3\2\2\2\4\'\3\2\2\2"+
		"\6\63\3\2\2\2\bH\3\2\2\2\nV\3\2\2\2\fX\3\2\2\2\16b\3\2\2\2\20f\3\2\2\2"+
		"\22\u0084\3\2\2\2\24\u008c\3\2\2\2\26\u00a6\3\2\2\2\30\u00e7\3\2\2\2\32"+
		"\u00ee\3\2\2\2\34\u00f0\3\2\2\2\36\u0106\3\2\2\2 $\5\4\3\2!$\5\6\4\2\""+
		"$\5\b\5\2# \3\2\2\2#!\3\2\2\2#\"\3\2\2\2$%\3\2\2\2%#\3\2\2\2%&\3\2\2\2"+
		"&\3\3\2\2\2\'(\7\3\2\2()\7\65\2\2).\7\4\2\2*-\5\6\4\2+-\5\b\5\2,*\3\2"+
		"\2\2,+\3\2\2\2-\60\3\2\2\2.,\3\2\2\2./\3\2\2\2/\61\3\2\2\2\60.\3\2\2\2"+
		"\61\62\7\5\2\2\62\5\3\2\2\2\63\65\5\30\r\2\64\66\7\65\2\2\65\64\3\2\2"+
		"\2\65\66\3\2\2\2\66\67\3\2\2\2\67C\7\6\2\289\5\30\r\29@\7\65\2\2:;\7\7"+
		"\2\2;<\5\30\r\2<=\7\65\2\2=?\3\2\2\2>:\3\2\2\2?B\3\2\2\2@>\3\2\2\2@A\3"+
		"\2\2\2AD\3\2\2\2B@\3\2\2\2C8\3\2\2\2CD\3\2\2\2DE\3\2\2\2EF\7\b\2\2FG\5"+
		"\f\7\2G\7\3\2\2\2HI\5\30\r\2IL\7\65\2\2JK\7\t\2\2KM\5\26\f\2LJ\3\2\2\2"+
		"LM\3\2\2\2MN\3\2\2\2NO\7\n\2\2O\t\3\2\2\2PW\5\f\7\2QW\5\16\b\2RW\5\20"+
		"\t\2SW\5\22\n\2TW\5\24\13\2UW\5\b\5\2VP\3\2\2\2VQ\3\2\2\2VR\3\2\2\2VS"+
		"\3\2\2\2VT\3\2\2\2VU\3\2\2\2W\13\3\2\2\2X\\\7\4\2\2Y[\5\n\6\2ZY\3\2\2"+
		"\2[^\3\2\2\2\\Z\3\2\2\2\\]\3\2\2\2]_\3\2\2\2^\\\3\2\2\2_`\7\5\2\2`\r\3"+
		"\2\2\2ac\5\26\f\2ba\3\2\2\2bc\3\2\2\2cd\3\2\2\2de\7\n\2\2e\17\3\2\2\2"+
		"fg\7\13\2\2gh\7\6\2\2hi\5\n\6\2ij\7\b\2\2jm\5\n\6\2kl\7\f\2\2ln\5\n\6"+
		"\2mk\3\2\2\2mn\3\2\2\2n\21\3\2\2\2op\7\r\2\2pq\7\6\2\2qr\5\n\6\2rs\7\b"+
		"\2\2st\5\n\6\2t\u0085\3\2\2\2uv\7\16\2\2vx\7\6\2\2wy\5\26\f\2xw\3\2\2"+
		"\2xy\3\2\2\2yz\3\2\2\2z|\7\n\2\2{}\5\26\f\2|{\3\2\2\2|}\3\2\2\2}~\3\2"+
		"\2\2~\u0080\7\n\2\2\177\u0081\5\26\f\2\u0080\177\3\2\2\2\u0080\u0081\3"+
		"\2\2\2\u0081\u0082\3\2\2\2\u0082\u0083\7\b\2\2\u0083\u0085\5\n\6\2\u0084"+
		"o\3\2\2\2\u0084u\3\2\2\2\u0085\23\3\2\2\2\u0086\u0087\7\17\2\2\u0087\u008d"+
		"\7\n\2\2\u0088\u0089\7\20\2\2\u0089\u008d\7\n\2\2\u008a\u008b\7\21\2\2"+
		"\u008b\u008d\7\n\2\2\u008c\u0086\3\2\2\2\u008c\u0088\3\2\2\2\u008c\u008a"+
		"\3\2\2\2\u008d\25\3\2\2\2\u008e\u008f\b\f\1\2\u008f\u00a7\5\36\20\2\u0090"+
		"\u00a7\7\65\2\2\u0091\u0092\7\6\2\2\u0092\u0093\5\26\f\2\u0093\u0094\7"+
		"\b\2\2\u0094\u00a7\3\2\2\2\u0095\u0096\7\25\2\2\u0096\u009d\5\32\16\2"+
		"\u0097\u0099\7\26\2\2\u0098\u009a\5\26\f\2\u0099\u0098\3\2\2\2\u0099\u009a"+
		"\3\2\2\2\u009a\u009b\3\2\2\2\u009b\u009e\7\27\2\2\u009c\u009e\7\30\2\2"+
		"\u009d\u0097\3\2\2\2\u009d\u009c\3\2\2\2\u009e\u009f\3\2\2\2\u009f\u009d"+
		"\3\2\2\2\u009f\u00a0\3\2\2\2\u00a0\u00a7\3\2\2\2\u00a1\u00a2\7\31\2\2"+
		"\u00a2\u00a3\7\24\2\2\u00a3\u00a7\5\26\f\17\u00a4\u00a5\t\2\2\2\u00a5"+
		"\u00a7\5\26\f\16\u00a6\u008e\3\2\2\2\u00a6\u0090\3\2\2\2\u00a6\u0091\3"+
		"\2\2\2\u00a6\u0095\3\2\2\2\u00a6\u00a1\3\2\2\2\u00a6\u00a4\3\2\2\2\u00a7"+
		"\u00e2\3\2\2\2\u00a8\u00a9\f\r\2\2\u00a9\u00aa\t\3\2\2\u00aa\u00e1\5\26"+
		"\f\16\u00ab\u00ac\f\f\2\2\u00ac\u00ad\t\4\2\2\u00ad\u00e1\5\26\f\r\u00ae"+
		"\u00af\f\13\2\2\u00af\u00b0\t\5\2\2\u00b0\u00e1\5\26\f\f\u00b1\u00b2\f"+
		"\n\2\2\u00b2\u00b3\t\6\2\2\u00b3\u00e1\5\26\f\13\u00b4\u00b5\f\t\2\2\u00b5"+
		"\u00b6\t\7\2\2\u00b6\u00e1\5\26\f\n\u00b7\u00b8\f\b\2\2\u00b8\u00b9\7"+
		")\2\2\u00b9\u00e1\5\26\f\t\u00ba\u00bb\f\7\2\2\u00bb\u00bc\7*\2\2\u00bc"+
		"\u00e1\5\26\f\b\u00bd\u00be\f\6\2\2\u00be\u00bf\7+\2\2\u00bf\u00e1\5\26"+
		"\f\7\u00c0\u00c1\f\5\2\2\u00c1\u00c2\7,\2\2\u00c2\u00e1\5\26\f\6\u00c3"+
		"\u00c4\f\4\2\2\u00c4\u00c5\7-\2\2\u00c5\u00e1\5\26\f\5\u00c6\u00c7\f\3"+
		"\2\2\u00c7\u00c8\7\t\2\2\u00c8\u00e1\5\26\f\3\u00c9\u00ca\f\24\2\2\u00ca"+
		"\u00e1\t\b\2\2\u00cb\u00cc\f\23\2\2\u00cc\u00d5\7\6\2\2\u00cd\u00d2\5"+
		"\26\f\2\u00ce\u00cf\7\7\2\2\u00cf\u00d1\5\26\f\2\u00d0\u00ce\3\2\2\2\u00d1"+
		"\u00d4\3\2\2\2\u00d2\u00d0\3\2\2\2\u00d2\u00d3\3\2\2\2\u00d3\u00d6\3\2"+
		"\2\2\u00d4\u00d2\3\2\2\2\u00d5\u00cd\3\2\2\2\u00d5\u00d6\3\2\2\2\u00d6"+
		"\u00d7\3\2\2\2\u00d7\u00e1\7\b\2\2\u00d8\u00d9\f\22\2\2\u00d9\u00da\7"+
		"\24\2\2\u00da\u00e1\7\65\2\2\u00db\u00dc\f\20\2\2\u00dc\u00dd\7\26\2\2"+
		"\u00dd\u00de\5\26\f\2\u00de\u00df\7\27\2\2\u00df\u00e1\3\2\2\2\u00e0\u00a8"+
		"\3\2\2\2\u00e0\u00ab\3\2\2\2\u00e0\u00ae\3\2\2\2\u00e0\u00b1\3\2\2\2\u00e0"+
		"\u00b4\3\2\2\2\u00e0\u00b7\3\2\2\2\u00e0\u00ba\3\2\2\2\u00e0\u00bd\3\2"+
		"\2\2\u00e0\u00c0\3\2\2\2\u00e0\u00c3\3\2\2\2\u00e0\u00c6\3\2\2\2\u00e0"+
		"\u00c9\3\2\2\2\u00e0\u00cb\3\2\2\2\u00e0\u00d8\3\2\2\2\u00e0\u00db\3\2"+
		"\2\2\u00e1\u00e4\3\2\2\2\u00e2\u00e0\3\2\2\2\u00e2\u00e3\3\2\2\2\u00e3"+
		"\27\3\2\2\2\u00e4\u00e2\3\2\2\2\u00e5\u00e8\5\32\16\2\u00e6\u00e8\5\34"+
		"\17\2\u00e7\u00e5\3\2\2\2\u00e7\u00e6\3\2\2\2\u00e8\31\3\2\2\2\u00e9\u00ef"+
		"\7.\2\2\u00ea\u00ef\7/\2\2\u00eb\u00ef\7\60\2\2\u00ec\u00ef\7\61\2\2\u00ed"+
		"\u00ef\7\65\2\2\u00ee\u00e9\3\2\2\2\u00ee\u00ea\3\2\2\2\u00ee\u00eb\3"+
		"\2\2\2\u00ee\u00ec\3\2\2\2\u00ee\u00ed\3\2\2\2\u00ef\33\3\2\2\2\u00f0"+
		"\u00f1\b\17\1\2\u00f1\u00f5\5\32\16\2\u00f2\u00f3\7\26\2\2\u00f3\u00f6"+
		"\7\27\2\2\u00f4\u00f6\7\30\2\2\u00f5\u00f2\3\2\2\2\u00f5\u00f4\3\2\2\2"+
		"\u00f6\u00ff\3\2\2\2\u00f7\u00fb\f\3\2\2\u00f8\u00f9\7\26\2\2\u00f9\u00fc"+
		"\7\27\2\2\u00fa\u00fc\7\30\2\2\u00fb\u00f8\3\2\2\2\u00fb\u00fa\3\2\2\2"+
		"\u00fc\u00fe\3\2\2\2\u00fd\u00f7\3\2\2\2\u00fe\u0101\3\2\2\2\u00ff\u00fd"+
		"\3\2\2\2\u00ff\u0100\3\2\2\2\u0100\35\3\2\2\2\u0101\u00ff\3\2\2\2\u0102"+
		"\u0107\t\t\2\2\u0103\u0107\7\66\2\2\u0104\u0107\7\67\2\2\u0105\u0107\7"+
		"\64\2\2\u0106\u0102\3\2\2\2\u0106\u0103\3\2\2\2\u0106\u0104\3\2\2\2\u0106"+
		"\u0105\3\2\2\2\u0107\37\3\2\2\2!#%,.\65@CLV\\bmx|\u0080\u0084\u008c\u0099"+
		"\u009d\u009f\u00a6\u00d2\u00d5\u00e0\u00e2\u00e7\u00ee\u00f5\u00fb\u00ff"+
		"\u0106";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}