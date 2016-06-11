//
//  ViewControllerUITests.swift
//  FizzBuzzSwift
//
//  Created by Amy Nicholson on 11/06/2016.
//  Copyright © 2016 Amy Nicholson. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
       
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTapNumberButtonIncrementsScore() {
        let app = XCUIApplication()
        let button = app.buttons["numberButton"]
        wait(1.0)
        button.tap()
        let newScore = button.label
        XCTAssertEqual(newScore, "1")
        
    }
    
    func testTapNumberButtonTwiceIncrementsScore() {
        let app = XCUIApplication()
        let button = app.buttons["numberButton"]
        wait(1.0)
        button.tap()
        button.tap()
        let newScore = button.label
        XCTAssertEqual(newScore, "2")
        
    }
    
    func testTapFizzButtonIncrementsScore() {
        let app = XCUIApplication()
        let fizzButton = app.buttons["fizzButton"]
        let numberButton = app.buttons["numberButton"]
        wait(1.0)
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
    }
    
    func testTapBuzzButtonIncrementsScore() {
        let app = XCUIApplication()
        let fizzButton = app.buttons["fizzButton"]
        let numberButton = app.buttons["numberButton"]
        let buzzButton = app.buttons["buzzButton"]
        wait(1.0)
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "5")
    }
    
    func testFizzBuzzButtonIncrementsScore() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzBuzzButton = app.buttons["fizzBuzzButton"]
        wait(1.0)
        playTo14()
        fizzBuzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "15")
    }
    
    func testScoreResetOnButtonPress() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let resetButton = app.buttons["resetButton"]
        wait(1.0)
        resetButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "0")
    }
    
    
    
    private func wait(seconds: NSTimeInterval) {
        let dateAfterWait = NSDate(timeIntervalSinceNow: seconds)
        NSRunLoop.mainRunLoop().runUntilDate(dateAfterWait)
    }
    
    private func playTo14() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        buzzButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
    }

    
}
