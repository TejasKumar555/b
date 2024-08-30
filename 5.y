%{
#include<stdio.h>
#include<stdlib.h>

int yyerror();
int yylex();

int var=0;
%}

%token INT FLOAT CHAR DOUBLE
%token ID
%token COMMA SEMI LBRA RBRA

%%
declartion:type var_list SEMI {printf("the number of variables declared=%d\n",var);var=0;}
;
type:INT {printf("int\n");}
|FLOAT  {printf("float\n");}
|CHAR   {printf("char\n");}
|DOUBLE {printf("double\n");}
;
var_list:var_list COMMA var {var++;}
|var {var++;}
;
var:ID
|ID LBRA INT RBRA
;
%%

int main()
{
printf("enter the stament\n");
yyparse();
return 0;
}
int yyerror()
{
printf("invalid\n");
exit(0);
}

