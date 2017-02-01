//
//  Employee.m
//  FirstApp
//
//  Created by Gabe Pavel on 2017-01-23.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#import "Employee.h"

@implementation Employee
{
    NSString * _name;
}

-(void) someMethod {
    _isEmployee = NO;
    NSLog(@"This is an Employee: %d, and they are employed? %hhd", (int)self.employeeNumber, _isEmployee);
    
}

-(Employee *) copyWithZone:(NSZone *)zone {
    Employee *myEmployee = [Employee allocWithZone:zone];
    return myEmployee;
}

-(NSString *)copyWithName {
    return _name;
}

@end
