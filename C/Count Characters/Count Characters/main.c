//
//  main.c
//  Count Characters
//
//  Created by Gabe Pavel on 2017-01-20.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#include <stdio.h>
#include <string.h>

int main(int argc, const char * argv[]) {
    //C program to accept a string and print out total numbers of characters.
    // http://www.cplusplus.com/reference/cstring/strlen/
    
    char szInput[256];
    printf ("Enter a sentence: ");
    gets (szInput);
    printf ("The sentence entered is %u characters long.\n",(unsigned)strlen(szInput));
    return 0;
}
