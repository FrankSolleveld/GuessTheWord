//
//  ViewController.swift
//  Apple Pie
//
//  Created by Frank Solleveld on 24/10/2019.
//  Copyright © 2019 Frank Solleveld. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Variables
    var listOfWords: [String] = ["spaghetti", "bolognese", "apple", "samsung", "cowboy", "pleb", "iphone", "swift", "twostraws"]
    var incorrectMovesAllowed: Int = 7
    var totalWins: Int = 0
    var totalLosses: Int = 0
    var currentGame: Game!
    
    // MARK: Outlets
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    // MARK: Actions
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }

    // MARK: Functions
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
        updateUI()
    }
    
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
 
}
