//
//  BuildArrayPermutation_2024_12_21.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 26/12/24.
//

//Problem Description:
//Given a zero-based permutation nums (0-indexed), build an array ans of the same length where ans[i] = nums[nums[i]] for each 0 <= i < nums.length and return it.
//A zero-based permutation nums is an array of distinct integers from 0 to nums.length - 1 (inclusive).

// https://leetcode.com/problems/build-array-from-permutation/description/

struct BuildArrayPermutation_2024_12_21 {
    
    func buildArray(_ nums: [Int]) -> [Int] {
        
        var ans: [Int] = Array(repeating: 0, count: nums.count)
        
        for (i, num) in nums.enumerated() {
            ans[i] = nums[num]
        }
        return ans
    }
}
