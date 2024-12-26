//
//  GoodPairs_2024_12_21.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 21/12/24.
//

//Problem Description:
//Given an array of integers nums, return the number of good pairs.
//A pair (i, j) is called good if nums[i] == nums[j] and i < j.

// https://leetcode.com/problems/number-of-good-pairs/description/

struct GoodPairs_2024_12_21 {
    
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        
        var count: Int = 0
        var numCounts = [Int: Int]()
        for num in nums {
            if let currentCount  = numCounts[num] {
                count += currentCount
                numCounts[num] = currentCount + 1
            } else {
                numCounts[num] = 1
            }
        }
        return count
    }
}
