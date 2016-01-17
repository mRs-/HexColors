HexColors
=========================
![Badge w/ Version](https://cocoapod-badges.herokuapp.com/v/HexColors/badge.png)
![Badge w/ Version](https://travis-ci.org/mRs-/HexColors.svg)
![Badge w/ Version](https://cocoapod-badges.herokuapp.com/p/HexColors/badge.png)

HexColors is drop in category for HexColor Support for NSColor and UIColor. Support for HexColors with prefixed # and without.

#RELEASE 3.0.0
Popular request was to pre-fix the function calls because of better support of different libraries and dependencies. All functions are now prefixed with hx_

#Example iOS
##objective-c##
``` objective-c
// with hash
UIColor *colorWithHex = [UIColor hx_colorWithHexString:@"#ff8942"];

// without hash
UIColor *secondColorWithHex = [UIColor hx_colorWithHexString:@"ff8942"];

// short handling
UIColor *shortColorWithHex = [UIColor hx_colorWithHexString:@"fff"];
```
##swift##
``` swift
// with hash
let colorWithHex = UIColor.hx_colorWithHexString("#ff8942")

// without hash
let secondColorWithHex = UIColor.hx_colorWithHexString("ff8942")

// short handling
let shortColorWithHex = UIColor.hx_colorWithHexString("fff")
```

#Example Mac OS X
``` objective-c
// with hash
NSColor *colorWithHex = [NSColor hx_colorWithHexString:@"#ff8942"];

// wihtout hash
NSColor *secondColorWithHex = [NSColor hx_colorWithHexString:@"ff8942"];

// short handling
NSColor *shortColorWithHex = [NSColor hx_colorWithHexString:@"fff"];
```
##swift##
``` swift
// with hash
let colorWithHex = NSColor.hx_colorWithHexString("#ff8942")

// without hash
let secondColorWithHex = NSColor.hx_colorWithHexString("ff8942")

// short handling
let shortColorWithHex = NSColor.hx_colorWithHexString("fff")
```

#Installation
* `#import "HexColors.h"` where you want to use easy as pie HexColors
* `pod install HexColors`
* or just drag the source files in your project

##Requirements
HexColors requires [iOS 5.0](http://developer.apple.com/library/ios/#releasenotes/General/WhatsNewIniPhoneOS/Articles/iPhoneOS4.html) and above, and Mac OS X 10.6

##Credits
HexColors was created by [Marius Landwehr](https://github.com/mRs-) because of the pain recalculating Hex values to RGB.

HexColors was ported to Mac OS X by [holgersindbaek](https://github.com/holgersindbaek).

##Creator
[Marius Landwehr](https://github.com/mRs-) [@mariusLAN](https://twitter.com/mariusLAN)

##License
HexColors is available under the MIT license. See the LICENSE file for more info.
