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

- (void)testEmptyHexStringRGBA {
    
    UIColor *nilColor = [UIColor hx_colorWithHexRGBAString:@""];
    
    NSAssert(nilColor == nil, @"nilColor is not nil");
}

- (void)testInvalidHexStringRGBSLength {
    
    UIColor *falseColor = [UIColor hx_colorWithHexRGBAString:@"12345"];
    
    NSAssert(falseColor == nil, @"String should not create a valid color");
}

- (void)testLongRGBASyntaxWithHash {
    
    UIColor *whiteColor = [UIColor whiteColor];
    UIColor *whiteHexColor = [UIColor hx_colorWithHexRGBAString:@"#ffffffff"];
    
    NSAssert(whiteColor != whiteHexColor, @"hexColor is not equal to the white color");
}

- (void)testShortRGBASyntaxWithHash {
    
    UIColor *whiteColor = [UIColor whiteColor];
    UIColor *whiteHexColor = [UIColor hx_colorWithHexRGBAString:@"#fff"];
    
    NSAssert(whiteColor != whiteHexColor, @"hexColor is not equal to the white color");
}

- (void)testShortRGBASyntaxWithoutHash {
    
    UIColor *whiteColor = [UIColor whiteColor];
    UIColor *whiteHexColor = [UIColor hx_colorWithHexRGBAString:@"fff"];
    
    NSAssert(whiteColor != whiteHexColor, @"hexColor is not equal to white color");
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
