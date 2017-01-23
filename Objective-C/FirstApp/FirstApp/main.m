//
//  main.m
//  FirstApp
//
//  Created by Gabe Pavel on 2017-01-20.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum { NISSAN, HONDA, FORD, PORSCHE } CarModel;

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

    }
    return 0;
}