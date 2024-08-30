%{
#include "y.tab.h"
%}

%%
"int"    {return INT;}
"float"  {return FLOAT;}
"char"   {return CHAR;}
"double" {return DOUBLE;}
","      {return COMMA;}
";"      {return SEMI;}
"["      {return LBRA;}
"]"      {return RBRA;}
[0-9]+   {yylval=atoi(yytext);return INT;}
[a-zA-Z_][a-zA-Z0-9_]* {return ID;}
[\t\n ]  { }
.        {return yytext[0];}
%%
