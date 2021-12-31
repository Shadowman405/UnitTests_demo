//
//  UnitTests_demoTests.swift
//  UnitTests_demoTests
//
//  Created by Maxim Mitin on 31.12.21.
//

import XCTest
@testable import UnitTests_demo

class UnitTests_demoTests: XCTestCase {

    override func setUpWithError() throws {
        super.setUp()
        
    }

    override func tearDownWithError() throws {
        
        super.tearDown()
    }
    
    func testLowestVolumeShouldBeZero() {
        let sut = ViewController()
        
        sut.setVolume(value: -100)
        
        let volume = sut.volume
        XCTAssert(volume == 0, "Lowest value should be equal 0")
    }
    
    func testHighestVolumeShouldBeOneHundred() {
        let sut = ViewController()
        
        sut.setVolume(value: 200)
        
        let volume = sut.volume
        XCTAssert(volume == 100, "Highest value should be equal 100")
    }
    
}
