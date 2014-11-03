//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

// Created a new string to include the phrase and the passed data for cheeseName, returned the whole sentence to make the test pass

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *favoriteCheeseStringWithCheese = @"My favorite cheese is";
    NSString *fullSentence = [NSString stringWithFormat:@"%@ %@.", favoriteCheeseStringWithCheese, cheeseName];
    return fullSentence;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    
    // Need to find cheese in the string, replace with nothing. Discovered had to capture the leading space
    NSRange cheeseFinder = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    NSString *cheeseNameWithoutCheeseSuffix = [cheeseName stringByReplacingCharactersInRange: cheeseFinder withString:@""];
    return cheeseNameWithoutCheeseSuffix;
    
    
}

// Have not updated this as yet - there's no test that corresponds to the code below.  Will try this after next checkpoint.

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return nil;
}

@end
