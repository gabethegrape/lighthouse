//
//  main.c
//  Taking Input
//
//  Created by Gabe Pavel on 2017-01-20.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    char firstName[30], lastName[30];
    char middleInitial;
    printf("What is your middle initial? ");
    scanf("%c", &middleInitial);
    printf("What is your first name and last name? ");
    scanf("%s %s", firstName, lastName);
    printf("Your name is %s %c %s\n", firstName, middleInitial, lastName);
    return 0;

}
