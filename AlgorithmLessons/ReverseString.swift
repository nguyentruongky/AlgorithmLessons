//
//  ReverseString.swift
//  AlgorithmLessons
//
//  Created by Ky Nguyen on 11/10/16.
//  Copyright © 2016 Ky Nguyen. All rights reserved.
//

import Foundation

struct ReverseString {
    
    func reverseByCharacter(string: String) -> String {
        
        var reversedString:[Character] = [Character]()
        for character in string.characters {
            reversedString.insert(character, at: 0)
        }
        return String(reversedString)
    }
    
    func reverseByWord(string: String) -> String {
        
        let words = string.components(separatedBy: " ")
        let reversedWords = words.map { (word) -> String in
            return reverseByCharacter(string: word)
        }
        
        return reversedWords.joined(separator: " ")
    }
    
}
