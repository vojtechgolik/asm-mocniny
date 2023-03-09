//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>
#include <stdbool.h>
// Functions
// void some_asm_function();

// Variables
// type g_some_c_variable;
int mocnina = 33;

bool is_devidable();

int main()
{
    bool je = is_devidable();
    if(je)
        printf("Je mocninou \n");
    else
        printf("Neni mocninou \n");
}
