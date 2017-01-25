//
//  Car.m
//  Assignment 3
//
//  Created by Gabe Pavel on 2017-01-24.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#import "Car.h"

@implementation Car

-(void) drive {
    NSLog(@"%@", _model);
}

- (instancetype)initWithModel:model
{
    self = [super init];
    if (self) {
        _model = model;
    }
    return self;
}

@end
