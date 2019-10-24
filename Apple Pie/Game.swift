//
//  Game.swift
//  Apple Pie
//
//  Created by Frank Solleveld on 24/10/2019.
//  Copyright © 2019 Frank Solleveld. All rights reserved.
//

import Foundation

struct Game {
    // MARK: Variables
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]

    // MARK: Functions
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
}
