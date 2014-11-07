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
    
  // Updated this exercise to handle numbers between the two items - just for fun.
    
    if (dollars < gum) {
        itemToReturn = @"get out of my store";
     }
    else if (dollars == gum || (dollars > gum && dollars < apple)) {
        itemToReturn = @"have some gum";
     }
    else if (dollars == apple || (dollars > apple && dollars < appleComputer)) {
        itemToReturn = @"have an apple";
     }

    else if (dollars == appleComputer || (dollars > appleComputer && dollars < bigApple)) {
        itemToReturn = @"have an Apple computer";
     }
    else if (dollars == bigApple || dollars > bigApple) {
        itemToReturn = @"have The Big Apple";
     }
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
  

    NSUInteger cost = 24;
    
    NSUInteger finalCost = self.getsDiscount ? (cost *=.75) : (cost);
    
    
    return finalCost;
}

@end
