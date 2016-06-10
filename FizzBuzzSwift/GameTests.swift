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
}
