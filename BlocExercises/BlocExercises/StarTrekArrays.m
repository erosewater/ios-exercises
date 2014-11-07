//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
   
    
//    NSArray *arrayOfStarTrekCharactersFromString = [NSArray arrayWithObjects:@"Captain Jean-Luc Picard of the USS Enterprise",
//                                                    @"Beverly Crusher, Chief Medical Officer", @"Worf, son of Mogh, slayer of Gowron", nil];
    
    NSArray *arrayOfStarTrekCharactersFromString = [characterString componentsSeparatedByString:@";"];
    
    return arrayOfStarTrekCharactersFromString;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    
   NSString *stringOfStarTrekCharactersFromArray = [characterArray componentsJoinedByString:@";"];
    
    return stringOfStarTrekCharactersFromArray;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
   // Need to create a mutable array using objects not strings from the immutable array
    
    NSMutableArray *myMutableSortedCharacters = [NSMutableArray arrayWithArray:characterArray];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    
    [myMutableSortedCharacters sortUsingDescriptors:@[sortDescriptor]];
    
    return myMutableSortedCharacters;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    // if Worf is present Return YES, otherwise return NO.  I tried this a few ways.  My first assumption was I needed to filter the array to look for Worf, and and then evaluate the result set to see if it was empty or contained something, however, though my filter worked fine, I had some issues looking at the array or converting it to a string.  Worf was not there, for example, when he wasn't supposed to be, but my true/false test would fail.
    
    NSString *allCharacters = [characterArray componentsJoinedByString:@";"];
    NSRange findWorf = [allCharacters rangeOfString:@"Worf" options:NSCaseInsensitiveSearch];
    if (findWorf.length > 0) {
        return YES;
    } else {
        return NO;
    }
        
        
    
}

  @end
