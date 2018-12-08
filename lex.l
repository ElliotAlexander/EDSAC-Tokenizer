%{    
    #include "tokens.h"
%}

%option noyywrap
%option yylineno

linefeed \n
whitespace [ \r\t\v\f]
alpha [a-zA-Z]+
alphanumeric ([a-zA-Z]+)(((([0-9]+)([a-zA-Z]+)?)+)|([0-9]+))
logicalnot (.[nN][oO][tT].)
logicaland (.[aA][nN][dD].)
logicalor (.[oO][rR].)
logicalnegv (.[Nn][Ee][Gg][Vv].)
logicaleqv (.[Ee][Qq][Vv].)
fixed_p_variable	([0-9]+)
floating_p_variable ([0-9]+).([0-9]+)

%%

{whitespace}
{linefeed}     ++yylineno;

{alpha}         { return  ALPHA ; }
{alphanumeric}  { return  ALPHANUMERIC ;}

{logicalnot}    { return  LOGICALNOT ; }
{logicaland}    { return  LOGICALAND ; }
{logicalor}     { return  LOGICALOR ; }
{logicalnegv}   { return  LOGICALNEGV ; }
{logicaleqv}    { return  LOGICALEQV ; }

{fixed_p_variable}  { return FIXED_P_VARIABLE; }
{floating_p_variable}  { return  FLOATING_P_VARIABLE; }


"*"     { return MULTIPLICATION; }
"/"     { return DIVISION; }
"-"     { return MINUS; }
"^"     { return EXPONENTION; }
"="     { return ASSIGNMENT; }
"+"     { return ADDITION; }
"{"     { return OPEN_PAREN; }
"}"     { return CLOSE_PAREN; }
'\n'    { return EOR; }

%%