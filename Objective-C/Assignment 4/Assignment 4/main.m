//
//  main.m
//  Assignment 4
//
//  Created by Gabe Pavel on 2017-01-24.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#import <Foundation/Foundation.h>

NSInteger biggestNumberInArray (NSArray *arr) {
    return [[arr valueForKeyPath:@"@max.intValue"] intValue];
}
// solution found here: http://stackoverflow.com/a/3080688/2036434

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    /* 
        Write a method that finds the highest number in an unsorted array and returns it. It should work for any array of numbers being passed in ex) @[@3, @7, @6, @8] or @[@44, @5, @6]
     */
        
        NSArray *myArray = @[@3, @8, @98, @99];
        NSInteger result = biggestNumberInArray(myArray);
        NSLog(@"%ld", (long)result);
    }
    return 0;
}
