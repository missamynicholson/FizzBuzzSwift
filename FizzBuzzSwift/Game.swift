//
//  Game.swift
//  FizzBuzzSwift
//
//  Created by Amy Nicholson on 10/06/2016.
//  Copyright © 2016 Amy Nicholson. All rights reserved.
//

import Foundation

class Game: NSObject {
    
    var score: Int
    
    override init() {
        score = 0
        super.init()
    }
    
    func play(move: String) -> Bool {
        score += 1
        return true
    }
    
}
