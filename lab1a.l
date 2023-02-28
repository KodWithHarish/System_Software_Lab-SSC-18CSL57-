%{
#include<stdio.h>
int v=0,op=0,id=0,flag=0;
%}

%%
[0-9][0-9]* {id++;printf("\nIdentifier:");ECHO;}
[\+\-\*\/\=] {op++;printf("\nOperartor:");ECHO;}
"(" {v++;}
")" {v--;}
";" {flag=1;}
.|\n {return 0;}
%%

int main()
{
	printf("Enter the expression:\n");
	yylex();
	if((op+1) ==id && v==0 && flag==0)
	{
		printf("\n no of operators:%d no of operands:%d\n",op,id);
		printf("\nExpression is Valid\n");
	}
	else
		printf("\nExpression is Invalid\n");
	return 1;
}
int yywrap()
{
	return 1;
}
