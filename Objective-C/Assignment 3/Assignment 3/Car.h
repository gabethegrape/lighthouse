//
//  Car.h
//  Assignment 3
//
//  Created by Gabe Pavel on 2017-01-24.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property NSString *model;
-(void) drive;
-(instancetype)initWithModel:model;

@end
