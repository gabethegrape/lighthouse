//
//  Player.h
//  FirstApp
//
//  Created by Gabe Pavel on 2017-01-23.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property int score;

-(instancetype)initWithScore:(int) initialScore;

@end
