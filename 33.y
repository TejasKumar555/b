%{
#include<stdio.h>
#include<stdlib.h>
int cnt=0;

int yylex();
int yyerror();
%}


%token FOR IDEN NUM

%%
S:I {return 0;}
;
I:FOR A B  {cnt++;}
;
A:'('E';'E';'E')'
;
E:IDEN Z IDEN
|IDEN Z NUM
|IDEN U
|IDEN
;
Z:'='|'<''='|'>''='|'>'|'<'|'!''='
;
U:'+''+'|'-''-'
;
B: B B
|'{'B'}'
|I
|E';'
|
;
%%

int main()
{
printf("enter the for\n");
yyparse();
printf("resultants for lopps are=%d\n",cnt);
return 0;
}

int yyerror()
{
printf("invalid\n");
exit(0);
}


