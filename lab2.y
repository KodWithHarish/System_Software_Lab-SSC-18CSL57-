%{
#include<stdio.h>
#include<stdlib.h>
%}
%token A B
%%
input: S'\n' {printf("successful grammar\n");exit(0);}
	S:A S1 B| B
	S1: ;| A S1
%%
main()
{
printf("enter a string\n");
yyparse();
}
yyerror()
{
printf("error\n");
exit(0);
}
