//
//  GameTests.swift
//  FizzBuzzSwift
//
//  Created by Amy Nicholson on 10/06/2016.
//  Copyright © 2016 Amy Nicholson. All rights reserved.
//

import XCTest
@testable import FizzBuzzSwift

class GameTests: XCTestCase {
    
    let game = Game()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testGameScoreIncremented() {
        game.play("1")
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfMoveIsCorret() {
        game.score = 2
        let result = game.play("Fizz")
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsIncorret() {
        game.score = 1
        let result = game.play("Fizz")
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveIsCorrectBuzz() {
        game.score = 4
        let result = game.play("Buzz")
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsIncorrect() {
        game.score = 3
        let result = game.play("Buzz")
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveIsCorrectFizzBuzz() {
        game.score = 14
        let result = game.play("FizzBuzz")
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIncorrectFizzBuzz() {
        game.score = 13
        let result = game.play("FizzBuzz")
        XCTAssertEqual(result, false)
    }
    
    func testIfCorrectMoveNumber() {
        game.score = 1
        let result = game.play("2")
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsIncorrectNumber() {
        game.score = 2
        let result = game.play("3")
        XCTAssertEqual(result, false)
    }
    
    func testGameScoreNotIncrementedIfIncorrect() {
        game.score = 4
        game.play("5")
        XCTAssertTrue(game.score == 4)
    }
    
    
}



