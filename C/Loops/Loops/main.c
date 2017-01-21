//
//  main.c
//  Loops
//
//  Created by Gabe Pavel on 2017-01-20.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int a = 10;
    do {
        printf("value: %d\n", a);
        a++;
    } while (a < 20);
    
    return 0;
}
