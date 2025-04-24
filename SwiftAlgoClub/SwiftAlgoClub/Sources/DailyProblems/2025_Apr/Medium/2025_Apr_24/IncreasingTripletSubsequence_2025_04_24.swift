//
//  IncreasingTripletSubsequence_2025_04_24.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 24/04/25.
//

/*
 Given an integer array nums, return true if there exists a triple of indices (i, j, k) such that i < j < k and nums[i] < nums[j] < nums[k]. If no such indices exists, return false.
 */

// https://leetcode.com/problems/increasing-triplet-subsequence/description/

struct IncreasingTripletSubsequence_2025_04_24 {
    
    func increasingTriplet(_ nums: [Int]) -> Bool {
        var first = Int.max
        var second = Int.max
        
        for num in nums {
            if num <= first {
                first = num
            } else if num <= second {
                second = num
            } else {
                return true
            }
        }
        return false
    }
}
