%{
#include<stdio.h>
#include<stdlib.h>

int posint=0,negint=0,posfrac=0,negfrac=0;
%}

num     [0-9]+
posint  \+?{num}
negint  -{num}
posnum  \+?{num}\/\+?{num}|-{num}\/-{num}
negnum  \+?{num}\/-{num}|-{num}\/\+?{num}

%%
{posint}  posint++;
{negint}  negint++;
{posnum}  posfrac++;
{negnum}  negfrac++;
[\n]      return 0;



%%


int main()
{
printf("enter the numbers\n");
yylex();
printf("pos=%d\nneg=%d\nposfrac=%d\nnegfrac=%d\n",posint,negint,posfrac,negfrac);
return 0;
}

int yywrap()
{
return 1;
}


