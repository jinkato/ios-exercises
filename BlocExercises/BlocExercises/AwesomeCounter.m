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
    
    NSString *outputString = @"";
    NSMutableString *tempI;
    
    if(number < otherNumber){
        for (NSInteger i = number; i <= otherNumber; i++){
            tempI = [NSMutableString stringWithFormat: @"%ld", (long)i];
            outputString = [outputString stringByAppendingString:tempI];
        }
    }else if (number > otherNumber){
        for (NSInteger i = otherNumber; i <= number; i++){
            tempI = [NSMutableString stringWithFormat: @"%ld", (long)i];
            outputString = [outputString stringByAppendingString:tempI];
        }
    }else if(number == otherNumber){
        outputString = [NSMutableString stringWithFormat: @"%ld", (long)number];
    }else{
        NSLog(@"Something broke");
    }
    
    
    
    return outputString;
}

@end
