//
//  TwoSum_2024_12_20.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 20/12/24.
//
 
//Problem Description:
//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//You can return the answer in any order.

// https://leetcode.com/problems/two-sum/description/

struct TwoSum_2024_12_20 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var numDict: [Int: Int] = [:]
        
        for i in 0..<nums.count {
            
            let num = nums[i]
            let complement = target - num
            if let complementIndex = numDict[complement] {
                return [complementIndex, i]
            }
            
            numDict[num] = i
        }
        return []
    }
}
