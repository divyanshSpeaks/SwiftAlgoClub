//
//  ValidParentheses_2024_12_20.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 20/12/24.
//

class ValidParentheses_2024_12_20 {
    
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        let matchingBrackets: [Character: Character] = [")": "(", "}": "{", "]": "["]
        
        for char in s {
            if let matchingBracket = matchingBrackets[char] {
                if stack.isEmpty || stack.last != matchingBracket {
                    return false
                }
                stack.removeLast()
            } else {
                stack.append(char)
            }
        }
        
        return stack.isEmpty
    }
}
