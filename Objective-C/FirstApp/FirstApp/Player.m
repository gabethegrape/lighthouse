//
//  Player.m
//  FirstApp
//
//  Created by Gabe Pavel on 2017-01-23.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [self initWithScore:5000];
    return self;
}

- (instancetype)initWithScore:(int) initialScore
{
    self = [super init];
    if (self) {
        _score = initialScore;
    }
    return self;
}

@end
