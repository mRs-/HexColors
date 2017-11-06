#Change Log
All notable changes to this project will be documented in this file.
`HexColors` adheres to [Semantic Versioning](http://semver.org/).

---
## [6.0.0] (https://github.com/mRs-/HexColors/tree/6.0.0)
* Swift 4

## [5.0.1] (https://github.com/mRs-/HexColors/tree/5.0.1)
* Fixxed a copy paste bug

## [5.0.0] (https://github.com/mRs-/HexColors/tree/5.0.0)
* Completetly rewritten in Swift 3.0
* hx_colorWithHexString / hx_colorWithHexRGBAString are not working any more
* breaking API-Changes
* Create UI/NSColor now with `UIColor("#FF00FF")` or `NSColor("#00FFFF")` 
* For Objective-C support switch to Version [4.0.0] (https://github.com/mRs-/HexColors/tree/5.0.0)

## [4.0.0] (https://github.com/mRs-/HexColors/tree/4.0.0)
* depricating hx_colorWithHexString use hx_colorWithHexRGBAString instead
** we moved from hx_colorWithHexString to show you where we are heading in the future. Most of you are not using the alpha component of this so we are moving this to colorWithHexRGBA, because most browsers are doing the same here. It's just natural to follow this through the library.

## [3.1.1] (https://github.com/mRs-/HexColors/tree/3.1.1)
* added cocoadocs

## [3.1.0] (https://github.com/mRs-/HexColors/tree/3.1.0)
* Nullability when you create a HexColor
* Unit-Tests added
* Travis-CI added
* tvOS support added

## [3.0.0] (https://github.com/mRs-/HexColors/tree/3.0.0)
* changed the prefix of the method calls to _hx for collision avoidiance
* watchOS support added

## [2.3.1] (https://github.com/mRs-/HexColors/tree/2.3.1)
* small bug fixes

## [2.3.0] (https://github.com/mRs-/HexColors/tree/2.3.0)
* renaming from HexColor.h to HexColors.h
* Carthage support added
* alpha hex strings are now working for 4- and 8-length hex Strings

## [2.1.0] (https://github.com/mRs-/HexColors/tree/2.1.0)
* small bug fixes

## [2.0.0] (https://github.com/mRs-/HexColors/tree/2.0.0)
* prefix # is not required any more

## [1.0.0] (https://github.com/mRs-/HexColors/tree/1.0.0)
* library was born
