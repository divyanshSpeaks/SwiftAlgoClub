//
//  PalindromeNumber_2024_12_20.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 20/12/24.
//

//Problem Description:
//Given an integer x, return true if x is a palindrome, and false otherwise.

//https://leetcode.com/problems/palindrome-number/description/
                                    
struct PalindromeNumber_2024_12_20 {
    func isPalindrome(_ x: Int) -> Bool {
        return x < 0 ? false : reverseNumber(x) == x
    }
    
    func reverseNumber(_ x: Int) -> Int{
        var r = 0
        var number = x
        while number != 0 {
            r = r * 10
            r += (number % 10)
            number /= 10
        }
        return (r < Int32.min || r > Int32.max) ? 0 : r
    }
}
