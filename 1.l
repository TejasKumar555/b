%{
#include<stdio.h>
#include<stdlib.h>
int chars=0,words=0,spaces=0,lines=0;
%}

%%
\t  		{spaces+=4;}
[ ]  		{spaces++;}
\n  		{lines++;}
[^ \t\n#]+  {words++;chars+=yyleng;}
#           {return 0;}

%%

int yywrap()
{
return 1;
}

int main()
{
printf("enter the string\n");
yylex();
printf("Lines: %d\nWords: %d\nChars: %d\nSpaces: %d\n",lines,words,chars,spaces);
return 0;
}
