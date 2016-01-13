//
//  HexColor.h
//
//  Created by Marius Landwehr on 02.12.12.
//  The MIT License (MIT)
//  Copyright (c) 2013 Marius Landwehr marius.landwehr@gmail.com
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "TargetConditionals.h"

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
  #import <UIKit/UIKit.h>
  #define HXColor UIColor
#else
  #import <Cocoa/Cocoa.h>
  #define HXColor NSColor
#endif

@interface HXColor (HexColorAddition)

/** 
 Creates a UIColor or NSColor from a HexString like #fff, #ffff, #ff00aa or #ff00aaee.
 With complete support for short hand hex values, short hand with short alpha value, full 
 hex values and full hex values with alpha.
 
 @param hexString NSString hex string for color generation
 @return UIColor / NSColor or nil
 */
+ (nullable HXColor *)hx_colorWithHexString:(nonnull NSString *)hexString;
/**
 Same implementation as hx_colorWithHexString but you can hand in a normal alpha value from 0 to 1
 
 @param hexString NSString hex string for color generation
 @param alpha CGFloat from 0 to 1
 @return UIColor / NSColor or nil
 */
+ (nullable HXColor *)hx_colorWithHexString:(nonnull NSString *)hexString alpha:(CGFloat)alpha;

+ (nonnull HXColor *)hx_colorWith8BitRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;
+ (nonnull HXColor *)hx_colorWith8BitRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha;

@end
