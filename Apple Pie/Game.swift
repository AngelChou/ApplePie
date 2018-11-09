//
//  Game.swift
//  Apple Pie
//
//  Created by Shun-Ching, Chou on 2018/11/9.
//  Copyright © 2018 Shun-Ching, Chou. All rights reserved.
//

import Foundation

struct Game {
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
    
    init(word: String, incorrectMovesRemaining: Int, guessedLetters: [Character]) {
        self.word = word
        self.incorrectMovesRemaining = incorrectMovesRemaining
        self.guessedLetters = guessedLetters
    }
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
        
    }
    
}
