//
//  ViewController.swift
//  GuessingGame
//
//  Created by Lu, Alisa on 2018/1/17.
//  Copyright © 2018年 Lu, Alisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var textFieldGuess: UITextField!
    
    // MARK: Properties (Variables)
    var game = GuessingGame()
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Actions
    @IBAction func guessSubmitted(_ sender: Any) {
        
        // Print the guess that was given
        print(textFieldGuess.text)
        
        // Unwrap the text field's contents
        // (Making sure that the text field is not containing a nil value)
        guard let inputGiven = textFieldGuess.text else {
            // If we could not unwarp the optional, then quit this function
            return
    }
        // Make sure that the value is an integer
        // (Handle cases where the user enters text
        guard let guessProvided = Int(inputGiven) else {
            // If we can't convert to an integer, then quit and return
            return
        }
        
        // Print the actual number that was given
        print(guessProvided)
        
        // Print out the number that needs to be guessed
        print("The number needs to be guessed is")
        print(game.numberToGuess)
        
        // Compare the guess provided to the number to be guessed
        // if-else if-else
        labelMessage.text = game.compareGuessToNumber(guessMade: guessProvided)
    
}
    // MARK: Custom functions
    
}

