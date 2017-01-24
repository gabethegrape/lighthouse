//
//  main.m
//  FirstApp
//
//  Created by Gabe Pavel on 2017-01-20.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "MathUtility.h"
#import "Player.h"

typedef enum { NISSAN, HONDA, FORD, PORSCHE } CarModel;

NSString* evenOrOdd (NSInteger n){
    return (n & 1) ? @"Odd" : @"Even" ;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        float myFloat = 1.123456789012345678901234567890f;
        double myDouble = 1.123456789012345678901234567890;
        long double myLongDouble = 1.123456789012345678901234567890L;
        
        NSLog(@"myFloat: %g\n myDouble: %0.17g\n myLongDouble: %.21Le\n", myFloat, myDouble, myLongDouble);
        
        BOOL myBool = YES;
        bool myBool2 = false;
        NSLog(@"%i %i", myBool, myBool2);
        
        double odometer = 900.2;
        int odometerAsInt = (int)odometer;
        NSLog(@"odometer %.1f\n odometerAsInt: %d\n", odometer, odometerAsInt);
        
        CarModel myCar = NISSAN;
        
        switch (myCar) {
            case NISSAN:
            case HONDA:
                NSLog(@"You like Japanese cars");
                break;
            case FORD:
            case PORSCHE:
                NSLog(@"You like Western cars");
                break;
            default:
                break;
        }
        
        NSString * myString = @"Hello Gabe";
        NSString * shout = [myString uppercaseString];
        NSString * hello = @"Hello";
        NSString * withInit = [[NSString alloc] initWithFormat:@"This is your message: %@", shout];
        NSString * withHello = [NSString stringWithFormat:@"You should always start with %@", hello];
        NSString * shoutHello = [withHello uppercaseString];
        NSLog(@"This is my string: %@\n and %@\n %@\n", myString, withInit, shoutHello);
        
        NSDate *today = [NSDate date];
        
        NSDate *anotherDate = [[NSDate alloc] init];
        
        NSDate *dateAgain = [NSDate dateWithTimeIntervalSince1970:23234544];
        
        NSDate *lastDate = [[NSDate alloc] initWithTimeIntervalSince1970:23234544];
        
        NSLog(@"%@, %@, %@, %@", today, anotherDate, dateAgain, lastDate);
        
        NSString * result = evenOrOdd(3);
        
        NSLog(@"\n %@", result);
        
        // Call the employee class
        Employee *fred = [[Employee alloc] init];
        [fred someMethod];
        [fred setName:@"Fred Smith"];
        [fred setHireDate: [NSDate date]];
        NSLog(@"Employee Name: %@\nEmployee Hire Date: %@", fred.name, fred.hireDate);
        
        // MathUtility class
        // Instantiate the MathUtility object
        MathUtility *util = [[MathUtility alloc] init];
        
        // call the two methods on the newly instantiated object and assign to result variable
        int total = [util timesTen:55];
        NSLog(@"Times by ten: %i\n", [util timesTen:13]);
        
        total = [util addNumber:20 toNumber:30];
        NSLog(@"Add two numbers: %i\n", total);
        
        // Player class
        // Instantiate first player object
        Player *firstPlayer = [[Player alloc] init];
        NSLog(@"first player score is: %i", [firstPlayer score]);
        
        // Instantiate second player object
        Player *secondPlayer = [[Player alloc]initWithScore:3999];
        NSLog(@"second player score: %i", [secondPlayer score]);
        
    }
    return 0;
}
