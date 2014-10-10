//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    return [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    NSRange noCheese = [cheeseName rangeOfString:@"cheese" options:NSCaseInsensitiveSearch];
    NSString *newCheese = [cheeseName copy];
    if (noCheese.location != NSNotFound) {
        newCheese = [cheeseName stringByReplacingCharactersInRange:noCheese withString:@""];
    }
    newCheese = [newCheese stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    return newCheese;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSMutableString *newCount = [NSMutableString stringWithFormat:@"%lu cheese", cheeseCount];
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        [newCount appendString:@"s"];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return newCount;
}

@end
