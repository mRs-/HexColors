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
        
        XCTAssertNil(NSColor(hex: ""))
    }
    
    func testCantCreateColorFromEmptyStringWithAlpha() {
        
        XCTAssertNil(NSColor(hex: "", alpha: 0.2))
    }
    
    func testCantCreateColorFromStringThatsNotHexConform() {
        
        XCTAssertNil(NSColor(hex: "Wow what a nice view!"))
    }
    
    func testCantCreateColorFromStringThatsNotHexConformWithAlpha() {
        
        XCTAssertNil(NSColor(hex: "Wow what a nice view!", alpha: 0.2))
    }
    
    func testCantCreateColorFromStringWith3CharactersThatAreNotInHexRange() {
        XCTAssertNil(NSColor(hex: "ZXY"))
    }
    
    func testCantCreateColorFromStringWith3CharactersThatAreNotInHexRangeWithAlpha() {
        XCTAssertNil(NSColor(hex: "ZXY", alpha: 0.2))
    }
    
    func testCantCreateColorFromStringWith4CharactersThatAreNotInHexRange() {
        XCTAssertNil(NSColor(hex: "ZXYL"))
    }
    
    func testCantCreateColorFromStringWith4CharactersThatAreNotInHexRangeWithAlpha() {
        XCTAssertNil(NSColor(hex: "ZXYL", alpha: 0.2))
    }
    
    func testCantCreateColorFromStringWith6CharactersThatAreNotInHexRange() {
        XCTAssertNil(NSColor(hex: "ZXYLPK"))
    }
    
    func testCantCreateColorFromStringWith6CharactersThatAreNotInHexRangeWithAlpha() {
        XCTAssertNil(NSColor(hex: "ZXYLPK", alpha: 0.2))
    }
    
    func testCantCreateColorFromStringWith8CharactersThatAreNotInHexRange() {
        XCTAssertNil(NSColor(hex: "ZXYLPKXX"))
    }
    
    func testCantCreateColorFromStringWith8CharactersThatAreNotInHexRangeWithAlpha() {
        XCTAssertNil(NSColor(hex: "ZXYLPKXX", alpha: 0.2))
    }
    
    func testCanCreateColorFromValidHexStringWith3Characters() {
        XCTAssertEqual(NSColor(hex: "FFF"), NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 1))
    }
    
    func testCanCreateColorFromValidHexStringWith3CharactersAndHashPrefix() {
        XCTAssertEqual(NSColor(hex: "#FFF"), NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 1))
    }
    
    func testCanCreateColorFromValidHexStringWith3CharactersAndAlpha() {
        XCTAssertEqual(NSColor(hex: "FFF", alpha: 0.2), NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 0.2))
    }
    
    func testCanCreateColorFromValidHexStringWith3CharactersAndAlphaAndHashPrefix() {
        XCTAssertEqual(NSColor(hex: "#FFF", alpha: 0.2), NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 0.2))
    }
    
    func testCanCreateColorFromValidHexStringWith4Characters() {
        XCTAssertEqual(NSColor(hex: "FFF0"), NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 0))
    }
    
    func testCanCreateColorFromValidHexStringWith4CharactersAndHashPrefix() {
        XCTAssertEqual(NSColor(hex: "#FFF0"), NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 0))
    }
    
    func testCanCreateColorFromValidHexStringWith4CharactersAndAlpha() {
        XCTAssertEqual(NSColor(hex: "FFFF", alpha: 0.2), NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 0.2))
    }
    
    func testCanCreateColorFromValidHexStringWith4CharactersAndAlphaAndHashPrefix() {
        XCTAssertEqual(NSColor(hex: "#FFFF", alpha: 0.2), NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 0.2))
    }
    
    func testCanCreateColorFromValidHexStringWith6Characters() {
        XCTAssertEqual(NSColor(hex: "FF00FF"), NSColor(calibratedRed: 1, green: 0, blue: 1, alpha: 1))
    }
    
    func testCanCreateColorFromValidHexStringWith6CharactersAndHashPrefix() {
        XCTAssertEqual(NSColor(hex: "#FF00FF"), NSColor(calibratedRed: 1, green: 0, blue: 1, alpha: 1))
    }
    
    func testCanCreateColorFromValidHexStringWith6CharactersAndAlpha() {
        XCTAssertEqual(NSColor(hex: "FF00FF", alpha: 0.2), NSColor(calibratedRed: 1, green: 0, blue: 1, alpha: 0.2))
    }
    
    func testCanCreateColorFromValidHexStringWith6CharactersAndAlphaAndHashPrefix() {
        XCTAssertEqual(NSColor(hex: "#FF00FF", alpha: 0.2), NSColor(calibratedRed: 1, green: 0, blue: 1, alpha: 0.2))
    }
    
    func testCanCreateColorFromValidHexStringWith8Characters() {
        XCTAssertEqual(NSColor(hex: "FF00FF00"), NSColor(calibratedRed: 1, green: 0, blue: 1, alpha: 0))
    }
    
    func testCanCreateColorFromValidHexStringWith8CharactersAndHashPrefix() {
        XCTAssertEqual(NSColor(hex: "#FF00FF00"), NSColor(calibratedRed: 1, green: 0, blue: 1, alpha: 0))
    }
    
    func testCanCreateColorFromValidHexStringWith8CharactersAndAlpha() {
        XCTAssertEqual(NSColor(hex: "FF00FFFF", alpha: 0.2), NSColor(calibratedRed: 1, green: 0, blue: 1, alpha: 0.2))
    }
    
    func testCanCreateColorFromValidHexStringWith8CharactersAndAlphaAndHashPrefix() {
        XCTAssertEqual(NSColor(hex: "#FF00FFFF", alpha: 0.2), NSColor(calibratedRed: 1, green: 0, blue: 1, alpha: 0.2))
    }
    
    func testCanTransformToColorAndBackToHexString() {
        let hexString = "#ff00ff"
        let color = NSColor(hex: hexString)
        
        XCTAssertEqual(hexString, color?.hex)
    }
    
    func testCanTransformToColorWithAlphaAndBackToHexString() {
        let hexString = "#ff00ff00"
        let color = NSColor(hex: hexString)
        
        XCTAssertEqual(hexString, color?.hex)
    }
    
}
