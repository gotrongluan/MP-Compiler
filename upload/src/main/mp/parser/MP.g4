grammar MP;

//1611931 - Nguyen Trong Luan
@lexer::header {
from lexererr import *
}

options{
	language=Python3;
}

mptype : INTEGER | REAL | BOOLEAN | STRING | array_type;

program : declare+ EOF;

declare : variable_declare | function_declare | procedure_declare;

variable_declare : VAR sub_vardecl+;

sub_vardecl : IDEN (CM IDEN)* CL mptype SM;

function_declare : FUNCTION IDEN LB parameter_list RB CL mptype SM variable_declare? compound_statement;

procedure_declare : PROCEDURE IDEN LB parameter_list RB SM variable_declare? compound_statement;

parameter_list : parameter_declare (SM parameter_declare)* |;

parameter_declare : IDEN (CM IDEN)* CL mptype;

/*Comment*/
TRADICOMMENT : '(*' .*? '*)' -> skip;

BLOCKCOMMENT : '{' .*? '}' -> skip;

LINECOMMENT : '//'~[\n\r]* -> skip;

/*TOKEN SET*/ 
fragment A : [aA]; // match either an 'a' or 'A'
fragment B : [bB];
fragment C : [cC];
fragment D : [dD];
fragment E : [eE];
fragment F : [fF];
fragment G : [gG];
fragment H : [hH];
fragment I : [iI];
fragment J : [jJ];
fragment K : [kK];
fragment L : [lL];
fragment M : [mM];
fragment N : [nN];
fragment O : [oO];
fragment P : [pP];
fragment Q : [qQ];
fragment R : [rR];
fragment S : [sS];
fragment T : [tT];
fragment U : [uU];
fragment V : [vV];
fragment W : [wW];
fragment X : [xX];
fragment Y : [yY];
fragment Z : [zZ];

/*Keywords*/
BREAK : B R E A K;

CONTINUE : C O N T I N U E;

FOR : F O R;

TO : T O;

DOWNTO : D O W N T O;

DO : D O;

IF : I F;

THEN : T H E N;

ELSE : E L S E;

RETURN : R E T U R N;

WHILE : W H I L E;

BEGIN : B E G I N;

END : E N D;

WITH : W I T H;

FUNCTION : F U N C T I O N;

PROCEDURE : P R O C E D U R E;

VAR : V A R;

TRUE : T R U E;

FALSE : F A L S E;

ARRAY : A R R A Y;

OF : O F;

REAL : R E A L;

BOOLEAN : B O O L E A N;

INTEGER : I N T E G E R;

STRING : S T R I N G;

/*Operators*/
NOT : N O T;

AND : A N D;

OR : O R;

DIV : D I V;

MOD : M O D;

ADD : '+';

SUB : '-';

MUL : '*';

DIVREAL : '/';

NEQ : '<>';

EQ : '=';

LT : '<';

GT : '>';

LTE : '<=';

GTE : '>=';

/*Separators*/
LSQ : '[';

RSQ : ']';

DD : '..';

CM : ',';

CL : ':';

SM : ';';

LB : '(';

RB : ')';

/*Array*/
array_type : ARRAY LSQ SUB? INTLIT DD SUB? INTLIT RSQ OF (INTEGER | REAL | STRING | BOOLEAN);

/*Literals*/
INTLIT : [0-9]+;

fragment Expo : [Ee]('-')?[0-9]+;

fragment Dec_point : '.' [0-9]+;

REALLIT : [0-9]+ Expo | [0-9]+'.'[0-9]* Expo? | Dec_point Expo?;

fragment ESC : '\\' [bnfrt'\\"];

STRINGLIT : '"' (ESC | ~["'\\\b\n\t\r\f])* '"' { self.text = self.text[1:-1] };

/*Expression*/
exp_list : exp (CM exp)* |;

exp : exp_one | exp (AND THEN | OR ELSE) exp;

exp_one:  exp_two EQ exp_two | exp_two NEQ exp_two | exp_two LT exp_two | exp_two LTE exp_two | exp_two GT exp_two | exp_two GTE exp_two | exp_two;

exp_two : STRINGLIT | REALLIT | INTLIT | TRUE | FALSE | IDEN | call_exp | LB exp RB | index_exp
		| <assoc=right> (SUB | NOT) exp_two
		| exp_two (DIVREAL | MUL | DIV | MOD | AND) exp_two
		| exp_two (ADD | SUB | OR) exp_two;

/*Index Expression*/
index_exp : index_exp LSQ exp RSQ | (STRINGLIT | REALLIT | INTLIT | TRUE | FALSE | IDEN | call_exp | LB exp RB) LSQ exp RSQ;

/*STATEMENTS*/
statement: if_statement | assignment_statement | while_statement | for_statement | return_statement | break_statement | continue_statement | compound_statement | with_statement | funcall;

/*Assignment Statement*/

ASSIGN : ':=';

lhs_assignment : IDEN | index_exp;

assignment_statement : (lhs_assignment ASSIGN)+ exp SM;

/*if Statement*/
if_statement: IF exp THEN statement (ELSE statement)?;

/*while Statement*/
while_statement : WHILE exp DO statement;

/*for Statement*/
for_statement : FOR IDEN ASSIGN exp (TO | DOWNTO) exp DO statement;

/*break Statement*/
break_statement : BREAK SM;

/*continue Statement*/
continue_statement : CONTINUE SM;

/*return Statement*/
return_statement : RETURN exp SM | RETURN SM;

/*compound Statement*/
compound_statement : BEGIN statement* END;

/*with Statement*/
with_statement : WITH (parameter_declare SM)+ DO statement;

/*call Statement*/
call_exp : IDEN LB exp_list RB;

funcall : call_exp SM;

/*Identifier*/
IDEN : [_a-zA-Z][_a-zA-Z0-9]*;

RC : [ \b\n\t\r\f]+ -> skip;

UNCLOSE_STRING: '"' (ESC | ~["'\\\b\n\t\r\f])* {raise UncloseString(self.text[1:])};
ILLEGAL_ESCAPE: '"' (ESC | ~["'\\\b\n\t\r\f])* '\\' (~[bntrf])? {raise IllegalEscape(self.text[1:])};
ERROR_CHAR : . { raise ErrorToken(self.text) };