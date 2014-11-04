//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

// For this exercise, though the instructions say that you can use "==" to compare two strings and they would be identical in memory, that logic didn't work. My theory here is that in this case we are passing two strings to "String1" and "String2," but not setting them equal.  Though they contain the same data, they are holding a different memory space so not identical. 

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    BOOL areTheyEqual = [string1 isEqualToString: string2];
// Debug code
//    NSLog(@"%@ %@", string1, string2);
//    NSLog(@"Are they equal? %@", areTheyEqual ? @"Yes": @"No");
    return areTheyEqual;
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
    BOOL areTheyEqual = [number1 isEqualToNumber: number2];
    return areTheyEqual;
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2 {
    BOOL isItGreater = (integer1 > integer2);
    return isItGreater;
}

@end
