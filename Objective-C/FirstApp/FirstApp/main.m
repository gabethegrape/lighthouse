//
//  main.m
//  FirstApp
//
//  Created by Gabe Pavel on 2017-01-20.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import <AppKit/AppKit.h>
#import "Employee.h"
#import "MathUtility.h"
#import "Player.h"

NSString * evenOrOdd (NSInteger n); // function prototype - declared before main function, but defined after

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // TYPES
        // 1. Primitives (C)
        float myFloat = 1.123456789012345678901234567890f;
        double myDouble = 1.123456789012345678901234567890;
        long double myLongDouble = 1.123456789012345678901234567890L;
        
        NSLog(@"myFloat: %g\n myDouble: %0.17g\n myLongDouble: %.21Le\n", myFloat, myDouble, myLongDouble);
        
        BOOL myBool = YES;
        bool myBool2 = false;
        NSLog(@"%i %i", myBool, myBool2);
        
        double odometer = 900.2;
        // type casting
        int odometerAsInt = (int)odometer;
        NSLog(@"odometer %.1f\n odometerAsInt: %d\n", odometer, odometerAsInt);
        
        // 2. Complex types (Objective-C)
        NSString * myString = @"Hello Gabe";
        NSUInteger myStringLength = [myString length];
        NSLog(@"myStringLength: %d", (int)myStringLength);
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
        
        // FUNCTION CALLBACKS
        
        NSString *result = evenOrOdd(3);
        NSLog(@"\n %@", result);
        
        // OBJECT INSTANTIATION
        
        // Employee Class
        
        Employee *fred = [[Employee alloc] init];
        [fred someMethod];
        [fred setName:@"Fred Smith"];
        [fred setHireDate: [NSDate date]];
        NSLog(@"Employee Name: %@\nEmployee Hire Date: %@", fred.name, fred.hireDate);
        
        // MathUtility class
        
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
        
        // ARRAYS
        
        // C-style arrays (immutable) and single type
        int myNumsArray[4] = {1,2,3,4}; // can be int myNumsArray[]
        NSLog(@"myNumsArray: %i", myNumsArray[1]);
        
        NSString *fruits[4] = { @"Apples", @"Oranges", @"Bananas", @"Pears"};
        NSLog(@"my fruits: %@", fruits[2]);
        
        // NOTE: no "bounds checking" on index value with c-style arrays
        
        // Objective-C style arrays
        // 1. immutable arrays
        NSDate *today2 = [NSDate date];
        NSArray *myImmutableArray = [[NSArray alloc] initWithObjects:@"one", @"two", @"three", today2, nil];
        NSLog(@"array called with objectAtIndex: %@", [myImmutableArray objectAtIndex:3]);
        NSLog(@"array called with shorthand: %@", myImmutableArray[2]);
        
        // 1a. shorthand immutable arrays
        NSArray *shortHandArray = @[@"one", @"two", today]; // note @ sign before and doesn't have the 'nil' at the end
        shortHandArray = @[@"aaaaa", @"b", @"c"]; //while you can't change the original array, you can replace it with a new one
        NSLog(@"shortHandArray: %@", [shortHandArray description]);
        NSUInteger firstVal = [shortHandArray[0] length];
        NSLog(@"firstVal: %lu", firstVal);
        
        // 2. mutable arrays
        NSMutableArray *myMutableArray = [[NSMutableArray alloc] initWithObjects:@"one", today2, @"thousand", nil];
        myString = @"this is still Gabe";
        [myMutableArray addObject:myString]; // adds value to the last position in array (before nil)
        [myMutableArray removeObjectAtIndex:0]; // removes first object from array
        NSLog(@"my mutable array: %@", myMutableArray[2]); // how do we display primitive types too?
        
        // DICTIONARIES
        // 1. Immutable dictionaries
        NSDictionary *provinces = [[NSDictionary alloc] initWithObjectsAndKeys:
                                   @"British Columbia", @"BC",
                                   @"Alberta", @"AB",
                                   @"Manitoba", @"MB",
                                   @"Ontario", @"ON",
                                   nil];
        NSLog(@"provinces: %@", [provinces objectForKey:@"BC"]);
        
        // 2. Mutable dictionaries
        NSMutableDictionary *provinces2 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                   @"British Columbia", @"BC",
                                   @"Alberta", @"AB",
                                   @"Manitoba", @"MB",
                                   nil];
        [provinces2 setObject:@"Ontario" forKey:@"ON"]; // adds a key/value pair to the dict
        NSString *someProvince = @"ON";
        NSLog(@"provinces: %@ %@", someProvince, [provinces2 objectForKey:someProvince]);
        NSLog(@"shorthand provinces log: %@ %@", someProvince, provinces2[someProvince]);
        
        // 3. Shorthand dictionary instantiation
        NSDictionary *quicker = @{
            @"BC" : @"British Columbia",
            @"ON" : @"Ontario",
            @"AB" : @"Alberta"
        }; // note @ sign before curly and no nil at the end
        NSLog(@"quicker: %@ %@", someProvince, quicker[someProvince]);
        
        // FAST ENUMERATION
        // 1. Enumerate over an ARRAY
        NSArray *people = @[@"Gabe", @"Eva", @"Sasha"];
        for (id person in people) {
            NSLog(@"person: %@", person);
        }
        
        // 2. Enumerate over a DICTIONARY
        NSDictionary *canada = @{
                                  @"BC" : @"British Columbia",
                                  @3 : @"Ontario",
                                  @"AB" : @"Alberta"
                                  };
        for (id province in canada) {
            NSLog(@"key:value %@:%@", province, canada[province]);
        }
        
        // WORKING WITH FILES
        
        // instantiate NSFileManager object
        NSFileManager *fileManager = [NSFileManager defaultManager];
        
        // hard code file path (not recommended)
        NSString *filePath = @"/Users/gpavel/Desktop/images/img-design.png";
        
        // check if file path exists
        if ([fileManager fileExistsAtPath:filePath isDirectory:nil]) {
            NSLog(@"File exists at: %@", filePath);
        } else {
            NSLog(@"File does not exist");
        }
        
        // get file attributes
        NSDictionary *fileAttributes = [fileManager attributesOfItemAtPath:filePath error:nil];
        
        // log out file attributes
        for (id key in fileAttributes) {
            NSLog(@"The keys %@ contain objects %@", key, fileAttributes[key]);
        }
        
        // Alternate method of getting file paths
        // use NSHomeDirectory() method
        NSString *homeDirectory = NSHomeDirectory();
        NSLog(@"home directory: %@", homeDirectory);
        
        // dive deeper into the home directory with the instance methods
        NSString *desktopPath = [homeDirectory stringByAppendingPathComponent:@"Desktop"];
        NSLog(@"desktop path: %@", desktopPath);
        NSString *imageDirectory = [desktopPath stringByAppendingPathComponent:@"images"];
        NSLog(@"image directory: %@", imageDirectory);
        NSString *imagePath = [imageDirectory stringByAppendingPathComponent:@"img-design.png"];
        NSLog(@"image file: %@", imagePath);
        
        // get dictionary of attributes
        NSDictionary *imageFileAttributes = [fileManager attributesOfItemAtPath:imagePath error:nil];
        
        for (id key in imageFileAttributes) {
            NSLog(@"The keys %@ contain objects %@", key, imageFileAttributes[key]);
        }
        
        // working with NSURL (and not file NSString)
        // start with Desktop URL
        NSURL *desktopURL = [fileManager URLForDirectory:NSDesktopDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
        NSLog(@"desktopURL: %@", desktopURL);
        
        // append images URL
        NSURL *imageDirURL = [desktopURL URLByAppendingPathComponent:@"images"]; // note this is an NSURL and not NSString
        NSURL *imageFileURL = [imageDirURL URLByAppendingPathComponent:@"img-design.png"];
        NSLog(@"image directory: %@", imageFileURL);
        
        // or create URL from known path
        NSURL *imageURLfromPath = [NSURL fileURLWithPath:imagePath];
        NSLog(@"imageURLfromPath: %@", imageURLfromPath);
        
        // Examples using URL
        // 1. READ file contents
        // get the documents directory URL
        NSURL *docsDirectory = [fileManager URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
        
        // get full URL path
        NSURL *full = [docsDirectory URLByAppendingPathComponent:@"sample.txt"];
        
        // insert contents from sample text file into a string object
        NSMutableString *contents = [[NSMutableString alloc] initWithContentsOfURL:full encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"contents: %@", contents);
        
        // 2. WRITE to file
        // NOTE: need to use NSMutableString class to gain access to write methods
        // append new string to old contents
        [contents appendString:@"\n Cool new content"]; //appendString is an instance method of the NSMutableString class
        
        // create new destination file in same directory (can also write to old one as well)
        NSURL *saveLocation = [docsDirectory URLByAppendingPathComponent:@"saved.txt"];
        
        // write new string to new destination
        //[contents writeToURL:saveLocation atomically:YES encoding:NSUTF8StringEncoding error:nil];
        
        // ENUMS
        // http://stackoverflow.com/a/707572/2036434
        
        typedef NS_ENUM(NSInteger, DayOfWeek) {
            DayOfWeekMonday = 1,
            DayOfWeekTuesday = 2,
            DayOfWeekWednesday = 3,
            DayOfWeekThursday = 4,
            DayOfWeekFriday = 5,
            DayOfWeekSaturday = 6,
            DayOfWeekSunday = 7
        };
        
        DayOfWeek day = 1;
        
        switch (day) {
            case DayOfWeekMonday:
            case DayOfWeekTuesday:
            case DayOfWeekWednesday:
            case DayOfWeekThursday: {
                NSLog(@"It's Fedora");
                break;
            }
            case DayOfWeekFriday: {
                NSLog(@"It's Sombrero");
                break;
            }
            case DayOfWeekSaturday:
            case DayOfWeekSunday: {
                NSLog(@"It's AstronautHelmet");
                break;
            }
        }
        
        
        // Alternate syntax for enums
        typedef enum { NISSAN, HONDA, FORD, PORSCHE } CarModel;
        
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
        
        // Another syntax for enum
        enum SomeAreFruit { APPLES, ORANGES, TOMATOES, POTATOES };
        enum SomeAreFruit fruit = APPLES;
        switch (fruit) {
            case APPLES:
                NSLog(@"You like Apples");
                break;
            case ORANGES:
            case TOMATOES:
            case POTATOES:
                NSLog(@"You don't like Apples");
                break;
            default:
                break;
        }
        
        // BLOCKS
        // nameless blocks without arguments
        ^{
            NSLog(@"Hello from inside the block without arguments");
        }; // note the unused expression warning
        
        // nameless blocks with arguments
        ^(double dividend, double divisor) {
            double quotient = dividend / divisor;
            return quotient;
        }; // note the unused expression warning
        
        // named block without arguments
        void (^logMessage)(void) = ^{
            NSLog(@"Hello from inside a named block");
        };
        logMessage();
        
        // Named blocks with arguments, declared, assigned, and called
        
        // 1. Declare the block variable
        double (^distanceFromRateAndTime)(double rate, double time);
        
        // 2. Create and assign the block
        distanceFromRateAndTime = ^double(double rate, double time) {
            return rate * time;
        };
        // 3. Call the block
        double dx = distanceFromRateAndTime(35, 1.5);
        
        // 4. Log the results
        NSLog(@"A car driving 35 mph will travel "
              @"%.2f miles in 1.5 hours.", dx);
        
        
        // Complex blocks in action
        
        // Create the array of strings to devowelize and a container for new ones
        NSArray *oldStrings = [NSArray arrayWithObjects:
                               @"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi", nil];
        NSLog(@"old strings: %@", oldStrings);
        NSMutableArray *newStrings = [NSMutableArray array];
        // Create a list of characters that we'll remove from the string
        NSArray *vowels = [NSArray arrayWithObjects:
                           @"a", @"e", @"i", @"o", @"u", nil];
        
        // Declare the block variable
        void (^devowelizer)(id, NSUInteger, BOOL *);
        
        // Assign a block to the variable
        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            NSMutableString *newString = [NSMutableString stringWithString:string];
            // Iterate over the array of vowels, replacing occurrences of each
            // with an empty string.
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
                 }
                 [newStrings addObject:newString];
        }; // End of block assignment
    }
    return 0;
}


// FUNCTIONS

NSString* evenOrOdd (NSInteger n){
    return (n & 1) ? @"Odd" : @"Even" ;
}
