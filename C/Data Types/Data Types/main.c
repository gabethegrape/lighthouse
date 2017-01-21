//
//  main.c
//  Data Types
//
//  Created by Gabe Pavel on 2017-01-20.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#include <stdio.h>
#include <string.h>

#define MYNAME "Gabe Pavel"

int main () {
    
    char *name = "Gabe";
    char initial = 'V';
    int age = 38;
    
    printf("I'm %d years old, my name is %s and my middle initial is %c\n", age, name, initial);
    
    return 0;
}
