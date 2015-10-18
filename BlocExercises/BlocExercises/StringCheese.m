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
    NSString *cheeseString = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return cheeseString;
}



- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    NSString *justTheName;
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
        justTheName = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    } else {
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
        justTheName = cheeseName;
    }
    return justTheName;
    
}



- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    
    NSString *cheeseStringType = [NSString stringWithFormat:@"%lu", (unsigned long)cheeseCount];
    NSString *cheeseStatement;
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        cheeseStatement = [NSString stringWithFormat:@"%@ cheese", cheeseStringType];
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        cheeseStatement = [NSString stringWithFormat:@"%@ cheeses", cheeseStringType];
    }
    return cheeseStatement;
}

@end
