grammar Compiler;

program :   (classDeclaration | functionDeclaration | variableDeclarationStatement)+;

classDeclaration    :   'class' IDENTIFIER '{'
						(functionDeclaration | variableDeclarationStatement)* '}';

functionDeclaration :   type IDENTIFIER? '('
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

selectionStatement  :   'if' '(' expression ')' statement ('else' statement)?;

iterationStatement  :   'while' '(' expression ')' statement #whileStatement
					|   'for' '(' expression? ';' expression? ';' expression? ')'
							statement   #forStatement
					;


jumpStatement   :   'continue' ';'  #continueStatement
                |   'break' ';'     #breakStatement
                |   'return' expression ';'    #returnStatement
                ;

expression  :   constant                                                        #constantExpression
			|   IDENTIFIER                                                      #identifierExpression
			|   '(' expression ')'                                              #subExpression
			|   expression '(' (expression (',' expression)*)? ')'              #functionCallExpression
			|   expression '.' IDENTIFIER                                       #fieldExpression
			|   'new' type ('[' expression? ']')+                               #newArrayExpression
			|   'new' type                                                      #newClassExpression
			|   expression '[' expression ']'                                   #arrayExpression
			|   'this' '.' expression                                           #thisExpression
			|   expression operator = ('++' | '--')                             #postfixExpression
			|   operator = ('+' | '-' | '~' | '!' | '++' | '--') expression     #unaryExpression
			|   expression operator = ('*' | '/' | '%') expression              #multiplicativeExpression
			|   expression operator = ('+' | '-') expression                    #additiveExpression
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

//type    :   nonArrayType | arrayType;
//
//nonArrayType    :   'void'      #voidType
//				|	'int'       #intType
//				|	'bool'      #boolType
//				|	'string'    #stringType
//				|	IDENTIFIER  #classType
//				;
//
//arrayType   :   nonArrayType ('['']' | '[]') | arrayType ('['']' | '[]');

type:   'void'                  #voidType
    |	'int'                   #intType
    |	'bool'                  #boolType
    |	'string'                #stringType
    |	IDENTIFIER              #classType
    |   type('['']')            #arrayType
    ;

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