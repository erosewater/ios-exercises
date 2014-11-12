//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
   
    
    NSString *favoriteDrinkForStarTrekCharacterDictionary = [characterDictionary objectForKey:@"favorite drink"];
    return favoriteDrinkForStarTrekCharacterDictionary;
    }

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
   // I'd like to find a better way to do this.  I'm still confused about an array of dictionary items.  What I would like to do is iterate over the array, pull out each of the objects that meet the key and add them to a new array.  Each dictionary is an object in the array.  This array holds two dictionaries.
   
    
    
    NSMutableDictionary *workingDict = [charactersArray[0] mutableCopy];
    NSMutableDictionary *workingDict2 = [charactersArray[1] mutableCopy];
    
    
    NSString *drink1 = [workingDict objectForKey:@"favorite drink"];
    NSString *drink2 = [workingDict2 objectForKey:@"favorite drink"];
    
    NSArray *arrayOfFavoriteDrinksForStarTrekCharacters = [NSArray arrayWithObjects: drink1
                                                           , drink2
                                                           , nil];
    
    
    
    return arrayOfFavoriteDrinksForStarTrekCharacters;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
   
   
    NSString *newQuote = @"Shut up, Wesley";
   
    NSMutableDictionary *newDictionaryWithQuoteAddedToStarTrekCharacterDictionary = [characterDictionary mutableCopy];
    [newDictionaryWithQuoteAddedToStarTrekCharacterDictionary setObject:newQuote forKey:@"quote"];
    
    return newDictionaryWithQuoteAddedToStarTrekCharacterDictionary;
    }


@end
