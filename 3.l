%{
#include<stdio.h>
#include<stdlib.h>

int mlines=0,multi=0,single=0;
FILE *filecomment;
%}

%%
"//"[^\n]*    {single++;fprintf(filecomment,"%s\n",yytext);}
"/*"[^*]*"*/" {multi++;
                 for(int i=0;i<yyleng;i++)
                 {
                 if(yytext[i]=='\n')
                 mlines++;
                 }
                 fprintf(filecomment,"%s\n",yytext);
              }
.             {fprintf(yyout,"%s",yytext);}

%%

int yywrap()
{
return 1;
}

int main()
{
    yyin=fopen("input.txt","r");
	yyout=fopen("output.txt","w");
    filecomment=fopen("comments.txt","w");
	yylex();
	printf("Single: %d\n Multi: %d\nMlines: %d\n",single,multi,mlines);
	return 0;

}


             
