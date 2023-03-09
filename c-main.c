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

int array_length = 6;

int pole1[] = {0,1,2,3,4,5};
int pole2[] = {5,4,3,2,1,0};

int result_pole[] = {0,0,0,0,0,0};

void count_pole();

bool is_devidable();

int main()
{
    bool je = is_devidable();
    if(je)
        printf("Je mocninou \n");
    else
        printf("Neni mocninou \n");

    count_pole();

    for(int i = 0; i < array_length; i ++){
        printf("%d ", result_pole[i]);
    }
    printf("\n");

}
