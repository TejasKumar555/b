%{
#include<stdio.h>
#include<stdlib.h>

int yylex();
int yyerror();

%}

%%

S: A B
;
A:'a'A'b'
|
;
B:'b'B'c'
|
;
%%

int main()
{
printf("enter the string\n");
yyparse();
printf("valid\n");
return 0;
}

int yyerror()
{
printf("INVALID STRING\n");
exit(0);
}
