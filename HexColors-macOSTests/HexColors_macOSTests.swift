//
//  HexColors_macOSTests.swift
//  HexColors-macOSTests
//
//  Created by Marius Landwehr on 26.12.16.
//  Copyright © 2016 Marius Landwehr. All rights reserved.
//

import XCTest
@testable import HexColors

class HexColors_macOSTests: XCTestCase {
  
  func testCantCreateColorFromEmptyString() {
    XCTAssertNil(NSColor(""))
  }
  
  func testCantCreateColorFromEmptyStringWithAlpha() {
    XCTAssertNil(NSColor("", alpha: 0.2))
  }
  
  func testCantCreateColorFromStringThatsNotHexConform() {
    
    XCTAssertNil(NSColor("Wow what a nice view!"))
  }
  
  func testCantCreateColorFromStringThatsNotHexConformWithAlpha() {
    
    XCTAssertNil(NSColor("Wow what a nice view!", alpha: 0.2))
  }
  
  func testCantCreateColorFromStringWith3CharactersThatAreNotInHexRange() {
    XCTAssertNil(NSColor("ZXY"))
  }
  
  func testCantCreateColorFromStringWith3CharactersThatAreNotInHexRangeWithAlpha() {
    XCTAssertNil(NSColor("ZXY", alpha: 0.2))
  }
  
  func testCantCreateColorFromStringWith4CharactersThatAreNotInHexRange() {
    XCTAssertNil(NSColor("ZXYL"))
  }
  
  func testCantCreateColorFromStringWith4CharactersThatAreNotInHexRangeWithAlpha() {
    XCTAssertNil(NSColor("ZXYL", alpha: 0.2))
  }
  
  func testCantCreateColorFromStringWith6CharactersThatAreNotInHexRange() {
    XCTAssertNil(NSColor("ZXYLPK"))
  }
  
  func testCantCreateColorFromStringWith6CharactersThatAreNotInHexRangeWithAlpha() {
    XCTAssertNil(NSColor("ZXYLPK", alpha: 0.2))
  }
  
  func testCantCreateColorFromStringWith8CharactersThatAreNotInHexRange() {
    XCTAssertNil(NSColor("ZXYLPKXX"))
  }
  
  func testCantCreateColorFromStringWith8CharactersThatAreNotInHexRangeWithAlpha() {
    XCTAssertNil(NSColor("ZXYLPKXX", alpha: 0.2))
  }
  
  func testCanCreateColorFromValidHexStringWith3Characters() {
    XCTAssertEqual(NSColor("FFF"), NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 1))
  }
  
  func testCanCreateColorFromValidHexStringWith3CharactersAndHashPrefix() {
    XCTAssertEqual(NSColor("#FFF"), NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 1))
  }
  
  func testCanCreateColorFromValidHexStringWith3CharactersAndAlpha() {
    XCTAssertEqual(NSColor("FFF", alpha: 0.2), NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 0.2))
  }
  
  func testCanCreateColorFromValidHexStringWith3CharactersAndAlphaAndHashPrefix() {
    XCTAssertEqual(NSColor("#FFF", alpha: 0.2), NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 0.2))
  }
  
  func testCanCreateColorFromValidHexStringWith4Characters() {
    XCTAssertEqual(NSColor("FFF0"), NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 0))
  }
  
  func testCanCreateColorFromValidHexStringWith4CharactersAndHashPrefix() {
    XCTAssertEqual(NSColor("#FFF0"), NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 0))
  }
  
  func testCanCreateColorFromValidHexStringWith4CharactersAndAlpha() {
    XCTAssertEqual(NSColor("FFFF", alpha: 0.2), NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 0.2))
  }
  
  func testCanCreateColorFromValidHexStringWith4CharactersAndAlphaAndHashPrefix() {
    XCTAssertEqual(NSColor("#FFFF", alpha: 0.2), NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 0.2))
  }
  
  func testCanCreateColorFromValidHexStringWith6Characters() {
    XCTAssertEqual(NSColor("FF00FF"), NSColor(calibratedRed: 1, green: 0, blue: 1, alpha: 1))
  }
  
  func testCanCreateColorFromValidHexStringWith6CharactersAndHashPrefix() {
    XCTAssertEqual(NSColor("#FF00FF"), NSColor(calibratedRed: 1, green: 0, blue: 1, alpha: 1))
  }
  
  func testCanCreateColorFromValidHexStringWith6CharactersAndAlpha() {
    XCTAssertEqual(NSColor("FF00FF", alpha: 0.2), NSColor(calibratedRed: 1, green: 0, blue: 1, alpha: 0.2))
  }
  
  func testCanCreateColorFromValidHexStringWith6CharactersAndAlphaAndHashPrefix() {
    XCTAssertEqual(NSColor("#FF00FF", alpha: 0.2), NSColor(calibratedRed: 1, green: 0, blue: 1, alpha: 0.2))
  }
  
  func testCanCreateColorFromValidHexStringWith8Characters() {
    XCTAssertEqual(NSColor("FF00FF00"), NSColor(calibratedRed: 1, green: 0, blue: 1, alpha: 0))
  }
  
  func testCanCreateColorFromValidHexStringWith8CharactersAndHashPrefix() {
    XCTAssertEqual(NSColor("#FF00FF00"), NSColor(calibratedRed: 1, green: 0, blue: 1, alpha: 0))
  }
  
  func testCanCreateColorFromValidHexStringWith8CharactersAndAlpha() {
    XCTAssertEqual(NSColor("FF00FFFF", alpha: 0.2), NSColor(calibratedRed: 1, green: 0, blue: 1, alpha: 0.2))
  }
  
  func testCanCreateColorFromValidHexStringWith8CharactersAndAlphaAndHashPrefix() {
    XCTAssertEqual(NSColor("#FF00FFFF", alpha: 0.2), NSColor(calibratedRed: 1, green: 0, blue: 1, alpha: 0.2))
  }
  
  func testCanTransformToColorAndBackToHexString() {
    let hexString = "#ff00ff"
    let color = NSColor(hexString)
    
    XCTAssertEqual(hexString, color?.hex)
  }
  
  func testCanTransformToColorWithAlphaAndBackToHexString() {
    let hexString = "#ff00ff00"
    let color = NSColor(hexString)
    
    XCTAssertEqual(hexString, color?.hex)
  }
  
}
