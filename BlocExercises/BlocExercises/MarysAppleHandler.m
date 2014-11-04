//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;
    NSInteger gum = 5;
    NSInteger apple = 6;
    NSInteger appleComputer = 1000;
    NSInteger bigApple = 1000000000;
    
  // Tried this a few ways.  The case I didn't handle is numbers in between.  Wasn't sure how to do these without creating a long expression, however, I am still looking into this.
    
    if (dollars < gum) {
        itemToReturn = @"get out of my store";
     }
    else if (dollars == gum) {
        itemToReturn = @"have some gum";
     }
    else if (dollars == apple) {
        itemToReturn = @"have an apple";
     }

    else if (dollars == appleComputer) {
        itemToReturn = @"have an Apple computer";
     }
    else if (dollars == bigApple) {
        itemToReturn = @"have The Big Apple";
   } else {
       itemToReturn = @"buy whatever you like up to %ld", (long)dollars;
         }

    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
  

    NSUInteger cost = 24;
    
    NSUInteger finalCost = self.getsDiscount ? (cost *=.75) : (cost = 24);
    
    
    return finalCost;
}

@end
