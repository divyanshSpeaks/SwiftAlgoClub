//
//  WordsContainingCharacter_2024_12_21.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 21/12/24.
//

//Problem Description
//You are given a 0-indexed array of strings words and a character x.
//Return an array of indices representing the words that contain the character x.
//Note that the returned array may be in any order.

// https://leetcode.com/problems/find-words-containing-character/description/

struct WordsContainingCharacter_2024_12_21 {
    
    func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
        
        return words.enumerated().compactMap { (i, word) in
            return (word.contains(x) ? i : nil)
        }
    }
}


