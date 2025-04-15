//
//  ContinuousSubarraySum_2025_04_15.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 15/04/25.
//

/*
 Given an integer array nums and an integer k, return true if nums has a good subarray or false otherwise.
 
 A good subarray is a subarray where:
 
 its length is at least two, and
 the sum of the elements of the subarray is a multiple of k.
 Note that:
 
 A subarray is a contiguous part of the array.
 An integer x is a multiple of k if there exists an integer n such that x = n * k. 0 is always a multiple of k.
 */

// https://leetcode.com/problems/continuous-subarray-sum/description/

struct ContinuousSubarraySum_2025_04_15 {
    
    private var prefixSum: Int = 0
    private var remainderMap: [Int: Int] = [0: -1]
    
    mutating func checkSubarraySum(_ nums: [Int], _ k: Int) -> Bool {
        for i in 0..<nums.count {
            prefixSum += nums[i]
            if(k != 0) {
                prefixSum = prefixSum % k
            }
            
            if let prevIndex = remainderMap[prefixSum] {
                if i - prevIndex > 1 {
                    return true
                }
            } else {
                remainderMap[prefixSum] = i
            }
        }
        return false
    }
}
