//
//  ViewController.swift
//  Concentration
//
//  Created by Clint McCandless on 3/16/18.
//  Copyright © 2018 Clint McCandless. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Instance variable
    var flipCount: Int = 0 {
        // didSet is executed every time flipCount is changed somewhere else in the code
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    // Instance variable which points to the UILabel
    @IBOutlet weak var flipCountLabel: UILabel!
    
    // Instance variable of type Array<UIButton>
    @IBOutlet var cardButtons: [UIButton]!
    
    // Array<String> holds the card titles
    var emojiChoices = ["🎃", "👻", "🎃", " 👻"]
    
    // Method/function executed every time a connected card is touched
    @IBAction func touchCard(_ sender: UIButton) {
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("The chosen card is not in cardButtons")
        }
    }
    
    // Method/function which specifies the action taken when a card is touched
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            flipCount += 1
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }

}
