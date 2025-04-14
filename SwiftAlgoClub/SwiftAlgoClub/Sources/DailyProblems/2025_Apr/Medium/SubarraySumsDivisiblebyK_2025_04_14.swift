//
//  SubarraySumsDivisiblebyK_2025_04_14.swift.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 14/04/25.
//

/*
 Given an integer array nums and an integer k, return the number of non-empty subarrays that have a sum divisible by k.
 A subarray is a contiguous part of an array.
 */

// https://leetcode.com/problems/subarray-sums-divisible-by-k/description/

struct SubarraySumsDivisiblebyK_2025_04_14 {
    
    private var prefixSum: Int = 0
    private var count: Int = 0
    private var freqMap: [Int: Int] = [0: 1]
    
    mutating func subarraysDivByK(_ nums: [Int], _ k: Int) -> Int {
        for num in nums {
            prefixSum += num
            var remainder = prefixSum % k
            remainder += remainder < 0 ? k : 0
            
            count += freqMap[remainder, default: 0]
            freqMap[remainder, default: 0] += 1
        }
        return count
    }
}
