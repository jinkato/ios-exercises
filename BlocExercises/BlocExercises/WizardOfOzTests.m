//
//  WizardOfOzTests.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import <XCTest/XCTest.h>
#import "WizardOfOz.h"

@interface WizardOfOzTests : XCTestCase

@property (nonatomic, strong) WizardOfOz *wonderfulWizard;

@end

@implementation WizardOfOzTests



- (void)setUp{
    [super setUp];
    self.wonderfulWizard = [[WizardOfOz alloc] init];
}



- (void)tearDown{
    [super tearDown];
}



- (void)testThatColorfulnessOfFilmIsAccuratelyPortrayed{
    BOOL colorSwitches = [self.wonderfulWizard switchesFromBlackAndWhiteToColor];
    XCTAssertTrue(colorSwitches == YES, @"The color switches from black and white to color, but the `switchesFromBlackAndWhiteToColor` method indicated that it doesn't.");
}



- (void)testTheMainCharacterIsCorrect{
    NSString *mainCharacter = [self.wonderfulWizard mainCharacter];
   XCTAssertEqualObjects(mainCharacter, @"", @"Incorrect main character string returned.");
}



@end
