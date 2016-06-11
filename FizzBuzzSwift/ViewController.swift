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
    
    @IBOutlet weak var fizzButton: UIButton!

    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    @IBOutlet weak var buzzButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
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
    
    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil")
            return
        }
        let response = unwrappedGame.play(move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(sender: UIButton) {
        switch sender {
        case fizzButton:
            play(Move.Fizz)
        case buzzButton:
            play(Move.Buzz)
        case fizzBuzzButton:
            play(Move.FizzBuzz)
        case numberButton:
            play(Move.Number)
        default:
            print ("Invalid selection")
        }
    }
    
    @IBAction func reset(sender: UIButton) {
        guard let unwrappedGame = game else {
            print("Game is nil")
            return
        }
        let result = unwrappedGame.reset()
        gameScore = result
    }
    
}

