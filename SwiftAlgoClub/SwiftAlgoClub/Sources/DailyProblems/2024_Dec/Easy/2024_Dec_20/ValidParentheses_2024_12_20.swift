//
//  ValidParentheses_2024_12_20.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 20/12/24.
//

//Problem Description:
//Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//An input string is valid if:
//Open brackets must be closed by the same type of brackets.
//Open brackets must be closed in the correct order.
//Every close bracket has a corresponding open bracket of the same type.

// https://leetcode.com/problems/valid-parentheses/description/

struct ValidParentheses_2024_12_20 {
    
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
