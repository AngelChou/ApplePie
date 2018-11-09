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
    var score: Int
    
    init(word: String, incorrectMovesRemaining: Int, guessedLetters: [Character], score: Int) {
        self.word = word
        self.incorrectMovesRemaining = incorrectMovesRemaining
        self.guessedLetters = guessedLetters
        self.score = score
    }
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        } else {
            score += 5
        }
        
    }
    
}
