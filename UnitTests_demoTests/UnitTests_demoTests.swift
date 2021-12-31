//
//  UnitTests_demoTests.swift
//  UnitTests_demoTests
//
//  Created by Maxim Mitin on 31.12.21.
//

import XCTest
@testable import UnitTests_demo

class UnitTests_demoTests: XCTestCase {
    
    var sut: ViewController!

    override func setUpWithError() throws {
        super.setUp()
        sut = ViewController()
    }

    override func tearDownWithError() throws {
        sut = nil
        super.tearDown()
    }
    
    func testLowestVolumeShouldBeZero() {
        
        sut.setVolume(value: -100)
        
        let volume = sut.volume
        XCTAssert(volume == 0, "Lowest value should be equal 0")
    }
    
    func testHighestVolumeShouldBeOneHundred() {
        sut.setVolume(value: 200)
        
        let volume = sut.volume
        XCTAssert(volume == 100, "Highest value should be equal 100")
    }
    
    func testCharsInSrtingsAreTheSame() {
        let string1 = "qwerty"
        let string2 = "ytrewq"
        
        let bool = sut.charactersCompare(stringOne: string1, stringTwo: string2)
        
        XCTAssert(bool , "String should be the same")
        
    }
    
    func testCharsInSrtingsAreTDifferent() {
        let string1 = "qwerty"
        let string2 = "ytrewq12"
        
        let bool = sut.charactersCompare(stringOne: string1, stringTwo: string2)
        
        XCTAssert(!bool , "String should be different")
        
    }
    
}
