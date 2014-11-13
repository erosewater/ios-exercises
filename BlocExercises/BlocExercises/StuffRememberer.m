//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    // removed mutable copy here - this sets the arrays equal
    
    self.strongArray= arrayToRemember;
   
    
    
    // Learned that this compares content - not whether they are using the same pointer, so not useful here.
    if ([arrayToRemember isEqualToArray:self.strongArray]) {
    
    NSLog(@"In the method they are equal");
    } else {
    NSLog(@"they are not equal");
    }
    
    
   
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    
    self.arrayIWillCopy= [arrayToCopy mutableCopy];
    
    
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.floatIWillRemember = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
   NSLog(@"the array %@", self.strongArray);
   
   return self.strongArray;
    
    
    
    
    
}

- (NSMutableArray *) arrayYouShouldCopy {
    
    return self.arrayIWillCopy;
}

- (CGFloat) floatYouShouldRemember {
    return _floatIWillRemember;
    
}

@end