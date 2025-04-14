//
//  SubarraySumEqualsK_2025_04_14.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 14/04/25.
//

/*
 Given an array of integers nums and an integer k, return the total number of subarrays whose sum equals to k.
 
 A subarray is a contiguous non-empty sequence of elements within an array.
 */

// https://leetcode.com/problems/subarray-sum-equals-k/description/


struct SubarraySumEqualsK_2025_04_14 {
    
    private var prefixSum: Int = 0
    private var count: Int = 0
    private var sumFrequencyMap: [Int: Int] = [0:1]
    
    mutating func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        
        for num in nums {
            prefixSum += num
            count += sumFrequencyMap[prefixSum - k, default: 0]
            sumFrequencyMap[prefixSum, default: 0] += 1
        }
        
        return count
    }
}
