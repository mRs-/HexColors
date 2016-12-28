HexColors
=========================
![Badge w/ Version](https://cocoapod-badges.herokuapp.com/v/HexColors/badge.png)
![Badge w/ Version](https://cocoapod-badges.herokuapp.com/p/HexColors/badge.png)
![Badge w/ Version](https://travis-ci.org/mRs-/HexColors.svg)
[![codecov](https://codecov.io/gh/mRs-/HexColors/branch/master/graph/badge.svg)](https://codecov.io/gh/mRs-/HexColors)

HexColors is an extension for UIColor and NSColor to support for creating colors from a hex string like #FF0088 or 8844FF. Completely rewritten in Swift 3!

If you want to use this in Objective-C jump to the 3.X version Tag.

#RELEASE 4.0.0
Completely rewritten in Swift 3 to get the real magic going on!

#Example iOS
``` swift
// with hash
let colorWithHex = UIColor(hex: "#ff8942")

// without hash
let secondColorWithHex = UIColor(hex: "ff8942")

// short handling
let shortColorWithHex = UIColor(hex: "fff")
```

#Example macOS
``` swift
// with hash
let colorWithHex = NSColor(hex: "#ff8942")

// without hash
let secondColorWithHex = NSColor(hex: "ff8942")

// short handling
let shortColorWithHex = NSColor(hex: "fff")
```

#Installation
* `pod install HexColors`
* or just drag the source files in your project

##Requirements
HexColors requires **>= iOS 8.0** and **>=macOS 10.9**.

##Credits
HexColors was created by [Marius Landwehr](https://github.com/mRs-) because of the pain recalculating Hex values to RGB.

##Creator
[Marius Landwehr](https://github.com/mRs-) [@mariusLAN](https://twitter.com/mariusLAN)

##License
HexColors is available under the MIT license. See the LICENSE file for more info.
