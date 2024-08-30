%{
#include "y.tab.h"
%}

%%

"for"  {return FOR;}
[0-9]+ {return NUM;}
[a-zA-Z]* {return IDEN;}
[\n ]  ;
.      {return yytext[0];}
%% 
