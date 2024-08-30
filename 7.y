%{
#include<stdio.h>
#include<stdlib.h>

int yyerror();
int yylex();
%}

%token TYPE ID NUM RET

%%
S:FUN {printf("accpted\n");exit(0);}
;
FUN: TYPE ID '('PARAM')' '{'BODY'}'
;
PARAM:PARAM ',' PARAM
|TYPE ID
|
;
BODY:BODY BODY
|PARAM ';'
|E ';'
|RET E';'
|
;
E:ID'='E
|E'+'E
|E'-'E
|E'*'E
|E'/'E
|ID
|NUM
;
%%

int main()
{
printf("enter the definition\n");
yyparse();
return 0;
}
int yyerror()
{
printf("invalid\n");
exit(0);
}

