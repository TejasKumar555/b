%{
#include<stdio.h>
#include<stdlib.h>

int id=0,oper=0,key=0;
%}


%%
"int"|"float"|"char"|"void"|"if"|"else"|"while"|"return"|"exit"  {printf("keyword\n");key++;}
[a-zA-Z_][a-zA-Z0-9_]*                                           {printf("identifer\n");id++;} 
[\+\-\*\/\^\&\|\=\!]                                             {printf("operator\n");oper++;}
[^\n]*                                                           {printf("INVALID\n");}
%%

int yywrap()
{
return 1;
}

int main()
{
printf("enter the string\n");
yylex();
printf("op=%d\nid=%d\nkey=%d\n",oper,id,key);
return 0;
}

                                                  

