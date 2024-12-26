//
//  FinalValueOfVariable_2024_12_20.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 20/12/24.
//

//Problem Description:
//There is a programming language with only four operations and one variable X:
//++X and X++ increments the value of the variable X by 1.
//--X and X-- decrements the value of the variable X by 1.
//Initially, the value of X is 0.
//Given an array of strings operations containing a list of operations, return the final value of X after performing all the operations.

// https://leetcode.com/problems/final-value-of-variable-after-performing-operations/description/


struct FinalValueOfVariable_2024_12_20 {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var initialValue: Int = 0
        
        guard !operations.isEmpty else {
            return initialValue
        }

        for opr in operations {
            switch opr {
                case let str where str.hasPrefix("+") || str.hasSuffix("+"):
                initialValue += 1
                case let str where str.hasPrefix("-") || str.hasSuffix("-"):
                initialValue -= 1
                default:
                break
            }
        }
        return initialValue
    }
}
