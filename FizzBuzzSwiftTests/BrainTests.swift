//
//  BrainTests.swift
//  FizzBuzzSwift
//
//  Created by Amy Nicholson on 10/06/2016.
//  Copyright © 2016 Amy Nicholson. All rights reserved.
//

import XCTest
@testable import FizzBuzzSwift

class BrainTests: XCTestCase {
    
    let brain = Brain()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(3)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThree() {
        let result = brain.isDivisibleByThree(1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive() {
        let result = brain.isDivisibleByFive(5)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFive() {
        let result = brain.isDivisibleByFive(6)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleBtFifteen() {
        let result = brain.isDivisibleByFifteen(15)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFifteen() {
        let result = brain.isDivisibleByFifteen(16)
        XCTAssertEqual(result, false)
    }
    
    func testCanSayFizz() {
        let result = brain.sayWordForNumber(3)
        XCTAssertEqual(result, Move.Fizz)
    }
    
    func testCanSayBuzz() {
        let result = brain.sayWordForNumber(5)
        XCTAssertEqual(result, Move.Buzz)
    }
    
    func testCanSayFizzBuzz() {
        let result = brain.sayWordForNumber(15)
        XCTAssertEqual(result, Move.FizzBuzz)
    }
    
    func testCanSayNumber() {
        let result = brain.sayWordForNumber(13)
        XCTAssertEqual(result, Move.Number)
    }
    
}
