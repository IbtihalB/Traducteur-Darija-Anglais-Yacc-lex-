%{
	#include<stdio.h>
	#include<stdlib.h>
%}

%token <f> NUM
%union{float f;
        char c;}
%type <f> S
%start S
%% 
S : S '+' S  {$$=$1 + $3;}
  |S '*' S   {$$=$1*$3;}
  |S '-' S   {$$=$1-$3;}
  |S '/' S   {$$=$1/$3;}
  |NUM
 ;

%%
int main()
{
  printf("entrer votre expression");
  yyparse();
}
int yyerror(char* s)
{
  fprintf(stderr,"%s",s);
}