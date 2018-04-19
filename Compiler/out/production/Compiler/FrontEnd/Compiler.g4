grammar Compiler;

program :   (classDeclaration | functionDeclaration | variableDeclarationStatement)+;

classDeclaration    :   'class' IDENTIFIER '{'
						(functionDeclaration | variableDeclarationStatement)* '}';

functionDeclaration :   type IDENTIFIER '('
						(type IDENTIFIER (',' type IDENTIFIER)*)? ')' blockStatement;

variableDeclarationStatement    :   type IDENTIFIER ('=' expression)? ';';

statement   :   blockStatement
			|   expressionStatement
			|   selectionStatement
			|   iterationStatement
			|   jumpStatement
			|   variableDeclarationStatement
			;

blockStatement  :   '{' statement* '}';

expressionStatement :   expression? ';';

selectionStatement  :   'if' '(' statement ')' statement ('else' statement)?;

iterationStatement  :   'while' '(' statement ')' statement #whileStatement
					|   'for' '(' expression? ';' expression? ';' expression? ')'
							statement   #forStatement
					;


jumpStatement   :   'continue' ';'  #continueStatement
                |   'break' ';'     #breakStatement
                |   'return' ';'    #returnStatement
                ;

expression  :   constant                                                        #constantExpression
			|   IDENTIFIER                                                      #variableExpression
			|   '(' expression ')'                                              #subExpression
			|   expression operator = ('++' | '--')                             #postfixExpression
			|   expression '(' (expression (',' expression)*)? ')'              #functionCallExpression
			|   expression '.' IDENTIFIER                                       #fieldExpression
			|   'new' nonArrayType ('[' expression? ']' | '[]')+                #newExpression
			|   expression '[' expression ']'                                   #arrayExpression
			|   'this' '.' expression                                           #thisExpression
			|   operator = ('+' | '-' | '~' | '!' | '++' | '--') expression     #unaryExpression
			|   expression operator = ('+' | '-') expression                    #additiveExpression
			|   expression operator = ('*' | '/' | '%') expression              #multiplicativeExpression
			|   expression operator = ('==' | '!=') expression                  #equalityExpression
			|   expression operator = ('<' | '<=' | '>' | '>=') expression      #inequalityExpression
			|   expression operator = ('<<' | '>>') expression                  #shiftExpression
			|   expression '&' expression                                       #andExpression
			|   expression '|' expression                                       #orExpression
			|   expression '^' expression                                       #xorExpression
			|   expression '&&' expression                                      #logicalAndExpression
			|   expression '||' expression                                      #logicalOrExpression
			|   <assoc = right> expression '=' expression                       #assignExpression
			;

type    :   nonArrayType | arrayType;

nonArrayType    :   'void'      #voidType
				|	'int'       #intType
				|	'bool'      #boolType
				|	'string'    #stringType
				|	IDENTIFIER  #classType
				;

arrayType   :   nonArrayType '['']' | arrayType '['']';

constant    :   ('true'| 'false')   #boolConstant
			|	INTEGER	            #intConstant
			|	STRING              #stringConstant
			|	'null'              #nullConstant
			;

IDENTIFIER	:	[a-zA-Z_][a-zA-Z0-9_]*;
INTEGER :   [0-9]+;

STRING	:	'"' CHAR*? '"';

fragment

CHAR    :   ~[\\\n\r]
		|   '\\' ["ntrbaef\\]
		;

LINECOMMENT :   '//' ~[\n\r]* -> skip;

BLOCKCOMMENT    :   '/*' .*? '*/' -> skip;

WHITESPACE  :   [ \n\r\t]+ -> skip;