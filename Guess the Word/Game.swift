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
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }

    // MARK: Functions
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
}
