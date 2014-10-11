//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    if (number == otherNumber) {
        return [NSString stringWithFormat:@"%ld", (long)number];
    }
   
    NSMutableString *newString = [NSMutableString string];
    
    for (NSInteger i = number; i <= otherNumber; i++) {
        [newString appendFormat:@"%ld", (long)i];
    }
    
    for (NSInteger j = otherNumber; j <= number; j++) {
        [newString appendFormat:@"%ld", (long)j];
    }
    
    return newString;
}

@end
