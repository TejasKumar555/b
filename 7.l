%{
#include "y.tab.h"
%}


%%
[\t\n ]   {}
"int"|"float"|"char"|"double"  {return TYPE;}
"return"                       {return RET;}
[a-zA-Z_][a-zA-Z0-9_]*         {return ID;}
[0-9]+                         {return NUM;}
.                              {return yytext[0];}
%%

