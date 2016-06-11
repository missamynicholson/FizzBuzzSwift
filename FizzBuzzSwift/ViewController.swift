//
//  ViewController.swift
//  FizzBuzzSwift
//
//  Created by Amy Nicholson on 10/06/2016.
//  Copyright © 2016 Amy Nicholson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gameScore: Int?
    var game: Game?

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func play(move: String) {
        guard let unwrappedGame = game else {
            print("Game is nil")
            return
        }
        let response = unwrappedGame.play(move)
        gameScore = response.score
    }


}

