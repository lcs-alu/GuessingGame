//
//  GuessingGame.swift
//  GuessingGame
//
//  Created by Lu, Alisa on 2018/1/17.
//  Copyright © 2018年 Lu, Alisa. All rights reserved.
//

import Foundation

struct GuessingGame {
    
    // Property
    var numberToGuess : Int
    
    // Initializer
    init() {
        numberToGuess = Int(arc4random_uniform(501)) // Generate a number between 0 and 500 (but not 501)
    }
    
    //Functions
    func compareGuessToNumber(guessMade: Int) -> String {
        
        if numberToGuess > guessMade {
            return "Guess higher!"
            }
        else if numberToGuess == guessMade {
            return "You got it!"
        }
        else {
            return "Guess lower!"
        }
    }

    
}
