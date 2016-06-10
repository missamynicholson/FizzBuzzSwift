//
//  Brain.swift
//  FizzBuzzSwift
//
//  Created by Amy Nicholson on 10/06/2016.
//  Copyright © 2016 Amy Nicholson. All rights reserved.
//

import Foundation

class Brain: NSObject {
    
    func isDivisibleBy(divisor: Int, num: Int) -> Bool {
        return num % divisor == 0
    }
    
    func isDivisibleByThree(num: Int) -> Bool {
        return isDivisibleBy(3, num: num)
    }
    
    func isDivisibleByFive(num: Int) -> Bool {
        return isDivisibleBy(5, num: num)
    }
    
    func isDivisibleByFifteen(num: Int) -> Bool {
       return isDivisibleBy(15, num: num)
    }
    
    func sayWordForNumber(num: Int) -> String {
        if isDivisibleByFifteen(num) {
            return "FizzBuzz"
        } else if isDivisibleByFive(num) {
            return "Buzz"
        } else if isDivisibleByThree(num) {
            return "Fizz"
        } else {
            return String(num)
        }
    }
    
}


