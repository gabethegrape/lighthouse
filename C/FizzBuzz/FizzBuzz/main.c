//
//  main.c
//  FizzBuzz
//
//  Created by Gabe Pavel on 2017-01-20.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int a;
    char *c;
    for (a = 1; a <= 100; a++) {
        // multiples of 3 and 5 print FizzBuzz
        if (a%3 == 0 && a%5 == 0) {
            c = "FizzBuzz";
            printf("%s\n", c);
            continue;
        }
        // multiples of 3 print Fizz
        if (a%3 == 0) {
            c = "Fizz";
            printf("%s\n", c);
            continue;
        }
        // multiples of 5 print Buzz
        if (a%5 == 0) {
            c = "Buzz";
            printf("%s\n", c);
            continue;
        }
        else {
            printf("%d\n", a);
        }
    }
    return 0;
}
