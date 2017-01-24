//
//  Employee.h
//  FirstApp
//
//  Created by Gabe Pavel on 2017-01-23.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

@property NSString *name;
@property NSDate * hireDate;
@property int employeeNumber;

-(void) someMethod;

@end
