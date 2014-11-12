//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {

    
    // unbox the nsnumber and do math
    int unboxedNumber = [number intValue] * 2 ;
    
    
    //rebox it
    NSNumber *numberThatIsTwiceAsBigAsNumber = [NSNumber numberWithInt:unboxedNumber];
    return numberThatIsTwiceAsBigAsNumber;
    
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
// Lesson Learned - an array can't be created with 0 objects
    
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

  // See if this can be simplied here
    NSNumber *workingNumber = [NSNumber numberWithInteger:smallerNumber];
    NSMutableArray *myArray = [@[workingNumber] mutableCopy];
    
    // The line below didn't work -
    // NSMutableArray *myArray = [@[NSNumber numberWithInteger:smallerNumber]];
    
    
    for (smallerNumber++;largerNumber >= smallerNumber; smallerNumber++ ) {
    [myArray addObject: [NSNumber numberWithInteger:smallerNumber] ];
    
    }
    
    return myArray;
    
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSMutableArray *workingArrayOfNumbers = [arrayOfNumbers mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [workingArrayOfNumbers sortUsingDescriptors:@[sortDescriptor]];
   
    
    NSInteger lowestNumberInArray = [(workingArrayOfNumbers[0]) integerValue];

    return lowestNumberInArray;
}

@end
