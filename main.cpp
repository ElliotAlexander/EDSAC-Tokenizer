#include <stdio.h>
#include <iostream>
#include "tokens.h"

using namespace std;

extern int yylex(void);
extern int yylineno;
extern char* yytext;

// TODO - macro tricks.
string  getTokenFromInt(int x){
    switch (x) {
        case 1:
            return "ALPHA";
        case 2: 
            return "ALPHANUMERIC";
        case 3: 
            return "LOGICALNOT";
        case 4:
            return "LOGICALOR";
        case 5: 
            return "LOGICALOR";
        case 6: 
            return "LOGICALNEQV";
        case 7:
            return "LOGICALEQV";
        case 8:
            return "FIXED_P_VARIABLE";
        case 9: 
            return "FLOATING_P_VARIABLE";
        case 10: 
            return "MULTIPLICATION";
        case 11:
            return "MINUS";
        case 12:
            return "DIVISION";
        case 13:
            return "EXPONENTION";
        case 14:
            return "ASSIGNMENT";
        case 15:
            return "ADDITION";
        case 16:
            return "OPEN_PAREN";
        case 17: 
            return "CLOSE_PAREN";
        case 18: 
            return "EOR";
        case 19:
            return "OTHER";
        default:
            return "NOT FOUND";
    }
}


int main()
{
    int x = 0;
    do {
        cout << "\nNew Token: \n";
        cout << "\tLine no: " << yylineno << '\n';
        printf("\tTokehn Text: %s\n", yytext);
        cout << "\tToken: " << getTokenFromInt(x) << "(" << x << ")." << endl; 
    } while ((x = yylex()));
}
