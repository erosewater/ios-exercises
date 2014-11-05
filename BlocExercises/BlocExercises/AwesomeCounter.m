//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter
//This needs to append string - idea is to identify range from low to high, low number plus one
// figure out first which number is less

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSInteger largerNumber;
    NSInteger smallerNumber;
    
    if (number > otherNumber) {
        largerNumber = number;
        smallerNumber = otherNumber;
    }
    else if (number < otherNumber) {
        largerNumber = otherNumber;
        smallerNumber = number;
    }
    else if (number == otherNumber) {
        smallerNumber = number;
    }
        
    NSMutableString *newStringCopy = [NSMutableString stringWithFormat:@"%ld", smallerNumber];
    for (smallerNumber++;largerNumber >= smallerNumber; smallerNumber++ ) {
        NSLog(@"Original Number %@", newStringCopy);
        [newStringCopy appendFormat: @"%ld", smallerNumber];
       
    }
    return newStringCopy;
    
}


    @end