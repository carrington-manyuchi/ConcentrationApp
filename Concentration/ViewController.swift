//
//  ViewController.swift
//  Concentration
//
//  Created by DA MAC M1 157 on 2023/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        //property observers - to keep the UI in sync with instance variables of our class
        didSet {
            flipCounter.text = " Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCounter: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
     
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        let cardNumber = cardButtons.firstIndex(of: sender)
        print(cardNumber ?? 0)
        flipCard(withEmoji: "👻", on: sender)
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}

