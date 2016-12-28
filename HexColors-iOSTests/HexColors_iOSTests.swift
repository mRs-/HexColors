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
        
        XCTAssertNil(UIColor(hex: ""))
    }
    
    func testCantCreateColorFromEmptyStringWithAlpha() {
        
        XCTAssertNil(UIColor(hex: "", alpha: 0.2))
    }
    
    func testCantCreateColorFromStringThatsNotHexConform() {
        
        XCTAssertNil(UIColor(hex: "Wow what a nice view!"))
    }
    
    func testCantCreateColorFromStringThatsNotHexConformWithAlpha() {
        
        XCTAssertNil(UIColor(hex: "Wow what a nice view!", alpha: 0.2))
    }
    
    func testCantCreateColorFromStringWith3CharactersThatAreNotInHexRange() {
        XCTAssertNil(UIColor(hex: "ZXY"))
    }
    
    func testCantCreateColorFromStringWith3CharactersThatAreNotInHexRangeWithAlpha() {
        XCTAssertNil(UIColor(hex: "ZXY", alpha: 0.2))
    }
    
    func testCantCreateColorFromStringWith4CharactersThatAreNotInHexRange() {
        XCTAssertNil(UIColor(hex: "ZXYL"))
    }
    
    func testCantCreateColorFromStringWith4CharactersThatAreNotInHexRangeWithAlpha() {
        XCTAssertNil(UIColor(hex: "ZXYL", alpha: 0.2))
    }
    
    func testCantCreateColorFromStringWith6CharactersThatAreNotInHexRange() {
        XCTAssertNil(UIColor(hex: "ZXYLPK"))
    }
    
    func testCantCreateColorFromStringWith6CharactersThatAreNotInHexRangeWithAlpha() {
        XCTAssertNil(UIColor(hex: "ZXYLPK", alpha: 0.2))
    }
    
    func testCantCreateColorFromStringWith8CharactersThatAreNotInHexRange() {
        XCTAssertNil(UIColor(hex: "ZXYLPKXX"))
    }
    
    func testCantCreateColorFromStringWith8CharactersThatAreNotInHexRangeWithAlpha() {
        XCTAssertNil(UIColor(hex: "ZXYLPKXX", alpha: 0.2))
    }
    
    func testCanCreateColorFromValidHexStringWith3Characters() {
        XCTAssertEqual(UIColor(hex: "FFF"), UIColor(red: 1, green: 1, blue: 1, alpha: 1))
    }
    
    func testCanCreateColorFromValidHexStringWith3CharactersAndHashPrefix() {
        XCTAssertEqual(UIColor(hex: "#FFF"), UIColor(red: 1, green: 1, blue: 1, alpha: 1))
    }
    
    func testCanCreateColorFromValidHexStringWith3CharactersAndAlpha() {
        XCTAssertEqual(UIColor(hex: "FFF", alpha: 0.2), UIColor(red: 1, green: 1, blue: 1, alpha: 0.2))
    }
    
    func testCanCreateColorFromValidHexStringWith3CharactersAndAlphaAndHashPrefix() {
        XCTAssertEqual(UIColor(hex: "#FFF", alpha: 0.2), UIColor(red: 1, green: 1, blue: 1, alpha: 0.2))
    }
    
    func testCanCreateColorFromValidHexStringWith4Characters() {
        XCTAssertEqual(UIColor(hex: "FFF0"), UIColor(red: 1, green: 1, blue: 1, alpha: 0))
    }
    
    func testCanCreateColorFromValidHexStringWith4CharactersAndHashPrefix() {
        XCTAssertEqual(UIColor(hex: "#FFF0"), UIColor(red: 1, green: 1, blue: 1, alpha: 0))
    }
    
    func testCanCreateColorFromValidHexStringWith4CharactersAndAlpha() {
        XCTAssertEqual(UIColor(hex: "FFFF", alpha: 0.2), UIColor(red: 1, green: 1, blue: 1, alpha: 0.2))
    }
    
    func testCanCreateColorFromValidHexStringWith4CharactersAndAlphaAndHashPrefix() {
        XCTAssertEqual(UIColor(hex: "#FFFF", alpha: 0.2), UIColor(red: 1, green: 1, blue: 1, alpha: 0.2))
    }
    
    func testCanCreateColorFromValidHexStringWith6Characters() {
        XCTAssertEqual(UIColor(hex: "FF00FF"), UIColor(red: 1, green: 0, blue: 1, alpha: 1))
    }
    
    func testCanCreateColorFromValidHexStringWith6CharactersAndHashPrefix() {
        XCTAssertEqual(UIColor(hex: "#FF00FF"), UIColor(red: 1, green: 0, blue: 1, alpha: 1))
    }
    
    func testCanCreateColorFromValidHexStringWith6CharactersAndAlpha() {
        XCTAssertEqual(UIColor(hex: "FF00FF", alpha: 0.2), UIColor(red: 1, green: 0, blue: 1, alpha: 0.2))
    }
    
    func testCanCreateColorFromValidHexStringWith6CharactersAndAlphaAndHashPrefix() {
        XCTAssertEqual(UIColor(hex: "#FF00FF", alpha: 0.2), UIColor(red: 1, green: 0, blue: 1, alpha: 0.2))
    }
    
    func testCanCreateColorFromValidHexStringWith8Characters() {
        XCTAssertEqual(UIColor(hex: "FF00FF00"), UIColor(red: 1, green: 0, blue: 1, alpha: 0))
    }
    
    func testCanCreateColorFromValidHexStringWith8CharactersAndHashPrefix() {
        XCTAssertEqual(UIColor(hex: "#FF00FF00"), UIColor(red: 1, green: 0, blue: 1, alpha: 0))
    }
    
    func testCanCreateColorFromValidHexStringWith8CharactersAndAlpha() {
        XCTAssertEqual(UIColor(hex: "FF00FFFF", alpha: 0.2), UIColor(red: 1, green: 0, blue: 1, alpha: 0.2))
    }
    
    func testCanCreateColorFromValidHexStringWith8CharactersAndAlphaAndHashPrefix() {
        XCTAssertEqual(UIColor(hex: "#FF00FFFF", alpha: 0.2), UIColor(red: 1, green: 0, blue: 1, alpha: 0.2))
    }
    
    func testCanTransformToColorAndBackToHexString() {
        let hexString = "#ff00ff"
        let color = UIColor(hex: hexString)
        
        XCTAssertEqual(hexString, color?.hex)
    }
    
    func testCanTransformToColorWithAlphaAndBackToHexString() {
        let hexString = "#ff00ff00"
        let color = UIColor(hex: hexString)
        
        XCTAssertEqual(hexString, color?.hex)
    }
}
