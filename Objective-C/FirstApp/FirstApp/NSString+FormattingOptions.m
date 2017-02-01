//
//  NSString+FormattingOptions.m
//  FirstApp
//
//  Created by Gabe Pavel on 2017-01-30.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#import "NSString+FormattingOptions.h"

@implementation NSString (FormattingOptions)

-(NSString *)convertToWhiteSpace {
    NSString *newString = [self stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    return newString;
}

@end
