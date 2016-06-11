//
//  ViewController.swift
//  FizzBuzzSwift
//
//  Created by Amy Nicholson on 10/06/2016.
//  Copyright © 2016 Amy Nicholson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print ("Game score is nil")
                return
            }
            numberButton.setTitle("\(unwrappedScore)", forState: .Normal)
        }
    }
    var game: Game?
    
    @IBOutlet weak var numberButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        guard let checkedGame = game else {
            print ("Game is nil")
            return
        }
        gameScore = checkedGame.score
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

    @IBAction func buttonTapped(sender: UIButton) {
        guard let unwrappedScore = gameScore else {
            print ("Game score is nil")
            return
        }
        let nextScore = unwrappedScore + 1
        play("\(nextScore)")
    }

}

