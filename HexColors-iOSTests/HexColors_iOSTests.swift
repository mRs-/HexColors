//
//  HexColors_iOSTests.swift
//  HexColors-iOSTests
//
//  Created by Marius Landwehr on 26.12.16.
//  Copyright © 2016 Marius Landwehr. All rights reserved.
//

import XCTest
@testable import HexColors

class HexColors_iOSTests: XCTestCase {
  
  func testCantCreateColorFromEmptyString() {
    
    XCTAssertNil(UIColor(""))
  }
  
  func testCantCreateColorFromEmptyStringWithAlpha() {
    
    XCTAssertNil(UIColor("", alpha: 0.2))
  }
  
  func testCantCreateColorFromStringThatsNotHexConform() {
    
    XCTAssertNil(UIColor("Wow what a nice view!"))
  }
  
  func testCantCreateColorFromStringThatsNotHexConformWithAlpha() {
    
    XCTAssertNil(UIColor("Wow what a nice view!", alpha: 0.2))
  }
  
  func testCantCreateColorFromStringWith3CharactersThatAreNotInHexRange() {
    XCTAssertNil(UIColor("ZXY"))
  }
  
  func testCantCreateColorFromStringWith3CharactersThatAreNotInHexRangeWithAlpha() {
    XCTAssertNil(UIColor("ZXY", alpha: 0.2))
  }
  
  func testCantCreateColorFromStringWith4CharactersThatAreNotInHexRange() {
    XCTAssertNil(UIColor("ZXYL"))
  }
  
  func testCantCreateColorFromStringWith4CharactersThatAreNotInHexRangeWithAlpha() {
    XCTAssertNil(UIColor("ZXYL", alpha: 0.2))
  }
  
  func testCantCreateColorFromStringWith6CharactersThatAreNotInHexRange() {
    XCTAssertNil(UIColor("ZXYLPK"))
  }
  
  func testCantCreateColorFromStringWith6CharactersThatAreNotInHexRangeWithAlpha() {
    XCTAssertNil(UIColor("ZXYLPK", alpha: 0.2))
  }
  
  func testCantCreateColorFromStringWith8CharactersThatAreNotInHexRange() {
    XCTAssertNil(UIColor("ZXYLPKXX"))
  }
  
  func testCantCreateColorFromStringWith8CharactersThatAreNotInHexRangeWithAlpha() {
    XCTAssertNil(UIColor("ZXYLPKXX", alpha: 0.2))
  }
  
  func testCanCreateColorFromValidHexStringWith3Characters() {
    XCTAssertEqual(UIColor("FFF"), UIColor(red: 1, green: 1, blue: 1, alpha: 1))
  }
  
  func testCanCreateColorFromValidHexStringWith3CharactersAndHashPrefix() {
    XCTAssertEqual(UIColor("#FFF"), UIColor(red: 1, green: 1, blue: 1, alpha: 1))
  }
  
  func testCanCreateColorFromValidHexStringWith3CharactersAndAlpha() {
    XCTAssertEqual(UIColor("FFF", alpha: 0.2), UIColor(red: 1, green: 1, blue: 1, alpha: 0.2))
  }
  
  func testCanCreateColorFromValidHexStringWith3CharactersAndAlphaAndHashPrefix() {
    XCTAssertEqual(UIColor("#FFF", alpha: 0.2), UIColor(red: 1, green: 1, blue: 1, alpha: 0.2))
  }
  
  func testCanCreateColorFromValidHexStringWith4Characters() {
    XCTAssertEqual(UIColor("FFF0"), UIColor(red: 1, green: 1, blue: 1, alpha: 0))
  }
  
  func testCanCreateColorFromValidHexStringWith4CharactersAndHashPrefix() {
    XCTAssertEqual(UIColor("#FFF0"), UIColor(red: 1, green: 1, blue: 1, alpha: 0))
  }
  
  func testCanCreateColorFromValidHexStringWith4CharactersAndAlpha() {
    XCTAssertEqual(UIColor("FFFF", alpha: 0.2), UIColor(red: 1, green: 1, blue: 1, alpha: 0.2))
  }
  
  func testCanCreateColorFromValidHexStringWith4CharactersAndAlphaAndHashPrefix() {
    XCTAssertEqual(UIColor("#FFFF", alpha: 0.2), UIColor(red: 1, green: 1, blue: 1, alpha: 0.2))
  }
  
  func testCanCreateColorFromValidHexStringWith6Characters() {
    XCTAssertEqual(UIColor("FF00FF"), UIColor(red: 1, green: 0, blue: 1, alpha: 1))
  }
  
  func testCanCreateColorFromValidHexStringWith6CharactersAndHashPrefix() {
    XCTAssertEqual(UIColor("#FF00FF"), UIColor(red: 1, green: 0, blue: 1, alpha: 1))
  }
  
  func testCanCreateColorFromValidHexStringWith6CharactersAndAlpha() {
    XCTAssertEqual(UIColor("FF00FF", alpha: 0.2), UIColor(red: 1, green: 0, blue: 1, alpha: 0.2))
  }
  
  func testCanCreateColorFromValidHexStringWith6CharactersAndAlphaAndHashPrefix() {
    XCTAssertEqual(UIColor("#FF00FF", alpha: 0.2), UIColor(red: 1, green: 0, blue: 1, alpha: 0.2))
  }
  
  func testCanCreateColorFromValidHexStringWith8Characters() {
    XCTAssertEqual(UIColor("FF00FF00"), UIColor(red: 1, green: 0, blue: 1, alpha: 0))
  }
  
  func testCanCreateColorFromValidHexStringWith8CharactersAndHashPrefix() {
    XCTAssertEqual(UIColor("#FF00FF00"), UIColor(red: 1, green: 0, blue: 1, alpha: 0))
  }
  
  func testCanCreateColorFromValidHexStringWith8CharactersAndAlpha() {
    XCTAssertEqual(UIColor("FF00FFFF", alpha: 0.2), UIColor(red: 1, green: 0, blue: 1, alpha: 0.2))
  }
  
  func testCanCreateColorFromValidHexStringWith8CharactersAndAlphaAndHashPrefix() {
    XCTAssertEqual(UIColor("#FF00FFFF", alpha: 0.2), UIColor(red: 1, green: 0, blue: 1, alpha: 0.2))
  }
  
  func testCanTransformToColorAndBackToHexString() {
    let hexStrings = [
        "#ff0000",
        "#00ff12",
        "#12aaff",
        "#00cc99",
        "#44aadd",
        "#dd12ff"
    ]

    for string in hexStrings {
        let color = UIColor(string)
        XCTAssertEqual(string, color?.hex)
    }
  }
  
  func testCanTransformToColorWithAlphaAndBackToHexString() {
    let hexStrings = [
        "#ff000012",
        "#00ff1234",
        "#12aaff56",
        "#00cc9978",
        "#44aadd90",
        "#dd12ffab"
    ]

    for string in hexStrings {
        let color = UIColor(string)
        XCTAssertEqual(string, color?.hex)
    }
  }
}
