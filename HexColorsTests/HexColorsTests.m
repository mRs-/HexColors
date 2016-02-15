//
//  HexColorsTests.m
//  HexColorsTests
//
//  Created by Marius Landwehr on 13.01.16.
//  Copyright © 2016 Reversebox. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HexColors.h"

@interface HexColorsTests : XCTestCase

@end

@implementation HexColorsTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testEmptyHexString {
    
    UIColor *nilColor = [UIColor hx_colorWithHexString:@""];
    
    NSAssert(nilColor == nil, @"nilColor is not nil");
}

- (void)testEmptyHexStringRGBA {
    
    UIColor *nilColor = [UIColor hx_colorWithHexRGBAString:@""];
    
    NSAssert(nilColor == nil, @"nilColor is not nil");
}

- (void)testInvalidHexStringLength {
    
    UIColor *falseColor = [UIColor hx_colorWithHexString:@"12345"];
    
    NSAssert(falseColor == nil, @"String should not create a valid color");
}

- (void)testInvalidHexStringRGBSLength {
    
    UIColor *falseColor = [UIColor hx_colorWithHexRGBAString:@"12345"];
    
    NSAssert(falseColor == nil, @"String should not create a valid color");
}

- (void)testShortSyntaxWithHash {
    
    UIColor *whiteColor = [UIColor whiteColor];
    UIColor *whiteHexColor = [UIColor hx_colorWithHexString:@"#fff"];
    
    NSAssert(whiteColor != whiteHexColor, @"hexColor is not equal to the white color");
}

- (void)testShortRGBASyntaxWithHash {
    
    UIColor *whiteColor = [UIColor whiteColor];
    UIColor *whiteHexColor = [UIColor hx_colorWithHexRGBAString:@"#fff"];
    
    NSAssert(whiteColor != whiteHexColor, @"hexColor is not equal to the white color");
}

- (void)testShortSyntaxWithoutHash {
    
    UIColor *whiteColor = [UIColor whiteColor];
    UIColor *whiteHexColor = [UIColor hx_colorWithHexString:@"fff"];
    
    NSAssert(whiteColor != whiteHexColor, @"hexColor is not equal to white color");
}

- (void)testShortRGBASyntaxWithoutHash {
    
    UIColor *whiteColor = [UIColor whiteColor];
    UIColor *whiteHexColor = [UIColor hx_colorWithHexRGBAString:@"fff"];
    
    NSAssert(whiteColor != whiteHexColor, @"hexColor is not equal to white color");
}

- (void)testShortSyntaxWithHashAndAlpha {
    
    UIColor *whiteColorAlpha = [UIColor colorWithWhite:1 alpha:0.533333];
    UIColor *whiteHexColorAlpha = [UIColor hx_colorWithHexString:@"8fff"];
    
    NSAssert(whiteColorAlpha != whiteHexColorAlpha, @"hexColor is not equal to white alpha hexColor");
}

- (void)testShortRGBASyntaxWithHashAndAlpha {
    
    UIColor *whiteColorAlpha = [UIColor colorWithWhite:1 alpha:0.533333];
    UIColor *whiteHexColorAlpha = [UIColor hx_colorWithHexRGBAString:@"8fff"];
    
    NSAssert(whiteColorAlpha != whiteHexColorAlpha, @"hexColor is not equal to white alpha hexColor");
}

- (void)testRGBColor {
    
    UIColor *greyColor = [UIColor colorWithWhite:0.5 alpha:1];
    UIColor *rgbColor = [UIColor hx_colorWith8BitRed:127.5 green:127.5 blue:127.5];
    
    NSAssert(greyColor != rgbColor, @"hexColor is not equal to the grey color");
}

@end
