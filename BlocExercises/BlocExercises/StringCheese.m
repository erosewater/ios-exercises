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
    
    // - First attempt didn't work :
    // if ([cheeseName containsString:@" cheese"]) {
    
        NSRange cheeseFinder = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    
    // First check to see if cheeseName has the suffix.
    
    if (cheeseFinder.length > 0) {
    
    // Tried a few variations here - the above seemed to work, though, I wasn't sure how to catch a nil value for the range otherwise (if "cheese" was not in the string).
    
        NSString *cheeseNameWithoutCheeseSuffix = [cheeseName stringByReplacingCharactersInRange: cheeseFinder withString:@""];
        return cheeseNameWithoutCheeseSuffix;
        
    // If the string " cheese" was not found, just return cheeseName
        
    } else {
      return cheeseName;
    }
    

    
}

// Used stringWithFormat after several failed attempts to get this to work

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        NSString *numberOfCheesesStringWithCheeseCount = [NSString stringWithFormat:@"%lu cheese", cheeseCount];
        return numberOfCheesesStringWithCheeseCount;
    } else {
        NSString *numberOfCheesesStringWithCheeseCount = [NSString stringWithFormat:@"%lu cheeses", cheeseCount];
        return numberOfCheesesStringWithCheeseCount;
    }
    
    
}

@end
