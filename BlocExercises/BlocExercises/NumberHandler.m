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
    /* WORK HERE */
    return @([number intValue] * 2);
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSMutableArray *newArray = [NSMutableArray array];
    
    NSInteger low = MIN(number, otherNumber);
    NSInteger high = MAX(number, otherNumber);
    
    for (NSInteger i = low; i <= high; i++) {
        [newArray addObject:@(i)];
    }
    return newArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSMutableArray *newArray = [arrayOfNumbers mutableCopy];
    NSSortDescriptor *sortAscending = [[NSSortDescriptor alloc]initWithKey:nil ascending:YES];
    [newArray sortUsingDescriptors:@[sortAscending]];
    NSNumber *lowestNumber = [newArray objectAtIndex:0];
    return [lowestNumber integerValue];
}

@end
