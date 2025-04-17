//
//  TwoSum2_2025_04_17.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 17/04/25.
//

/*
 Given a 1-indexed array of integers numbers that is already sorted in non-decreasing order, find two numbers such that they add up to a specific target number. Let these two numbers be numbers[index1] and numbers[index2] where 1 <= index1 < index2 <= numbers.length.
 
 Return the indices of the two numbers, index1 and index2, added by one as an integer array [index1, index2] of length 2.
 
 The tests are generated such that there is exactly one solution. You may not use the same element twice.
 
 Your solution must use only constant extra space.
 */

// https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/description/

struct TwoSum2_2025_04_17 {
    
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1
        
        while left < right {
            
            let sum = numbers[left] + numbers[right]
            if sum == target {
                return [left+1, right+1]
            } else if sum > target {
                right -= 1
            } else {
                left += 1
            }
        }
        
        return []
    }
}
