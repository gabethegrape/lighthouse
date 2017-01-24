//
//  MathUtility.m
//  FirstApp
//
//  Created by Gabe Pavel on 2017-01-23.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#import "MathUtility.h"

@implementation MathUtility
{
    // any instance variables should be defined here
    int somePrimitiveValue;
}

-(int) timesTen:(int)number {
    NSLog(@"The number to multiply by 10: %i\n", number);
    return number * 10;
}

-(int)addNumber:(int)a toNumber:(int)b {
    return a + b;
}

@end
