
%{
#include <stdio.h>
#include <string.h>
%}

DIGITO [A-z0-9._\-]
COMECO [A-z0-9]
FIM [A-z0-9.]
PALAVRAS [A-z0-9._\-!?,@]
%%

{COMECO}[@]{FIM} {
  if (yytext[strlen(yytext) - 1] == '.') {
    for(int i = 0; i < (int) strlen(yytext) - 1; i++) {
      printf("%c", yytext[i]);
    }
    printf("\n");
  }
  else
  printf("%s\n", yytext);
}

{COMECO}{DIGITO}*{COMECO}[@]{COMECO}{DIGITO}*{FIM} {
  if (yytext[strlen(yytext) - 1] == '.') {
    for(int i = 0; i < (int) strlen(yytext) - 1; i++) {
      printf("%c", yytext[i]);
    }
    printf("\n");
  }
  else
  printf("%s\n", yytext);
}

{COMECO}{DIGITO}*{COMECO}[@]{FIM} {
  if (yytext[strlen(yytext) - 1] == '.') {
    for(int i = 0; i < (int) strlen(yytext) - 1; i++) {
      printf("%c", yytext[i]);
    }
    printf("\n");
  }
  else
  printf("%s\n", yytext);
}

{COMECO}[@]{COMECO}{DIGITO}*{FIM} {
  if (yytext[strlen(yytext) - 1] == '.') {
    for(int i = 0; i < (int) strlen(yytext) - 1; i++) {
      printf("%c", yytext[i]);
    }
    printf("\n");
  }
  else
  printf("%s\n", yytext);
}

[[:space:]] ;

{PALAVRAS}+ ;

%%

int main() {
  yylex();
  return 0;
}
