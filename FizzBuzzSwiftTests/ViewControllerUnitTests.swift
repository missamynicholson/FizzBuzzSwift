//
//  ViewControllerUnitTests.swift
//  FizzBuzzSwift
//
//  Created by Amy Nicholson on 11/06/2016.
//  Copyright © 2016 Amy Nicholson. All rights reserved.
//

import XCTest
@testable import FizzBuzzSwift

class ViewControllerUnitTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle:NSBundle.mainBundle())
        viewController = storyboard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        UIApplication.sharedApplication().keyWindow!.rootViewController = viewController
        let _ = viewController.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testMove1IncrementsScore() {
        viewController.play("1")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementsScore() {
        viewController.play("1")
        viewController.play("2")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testFizzIncrementsScore() {
        viewController.game?.score = 2
        viewController.play("Fizz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncrementsScore() {
        viewController.game?.score = 4
        viewController.play("Buzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementsScore() {
        viewController.game?.score = 14
        viewController.play("FizzBuzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testWrongScoreDoesNotIncrementScore() {
        viewController.play("Fizz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 0)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
}
