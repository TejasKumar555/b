%{
#include<stdio.h>
#include<stdlib.h>

int yyerror();
int yylex();
%}

%token NUM
%left '+' '-'
%right '*' '/'

%%
S:I {printf("result is %d\n",$$);}
;
I:I'+'I  {$$=$1+$3;}
|I'-'I   {$$=$1-$3;} 
|I'*'I   {$$=$1*$3;} 
|I'/'I   {if($3==0) {yyerror();} else {$$=$1/$3;}}
|NUM
|'-'NUM
|'('I')'
;
%%

int main()
{
printf("enter the string\n");
yyparse();
printf("succesful\n");
return 0;
}

int yyerror()
{
printf("divide by zero error\n");
exit(0);
}
