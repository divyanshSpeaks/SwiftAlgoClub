//
//  ContiguousArray_2025_04_15.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 15/04/25.
//

/*
 Given a binary array nums, return the maximum length of a contiguous subarray with an equal number of 0 and 1.
 */

// https://leetcode.com/problems/contiguous-array/description/

struct ContiguousArray_2025_04_15 {
    
    private var prefixSum: Int = 0
    private var prefixMap: [Int: Int] = [0: -1]
    private var maxLength: Int = 0
    
    mutating func findMaxLength(_ nums: [Int]) -> Int {
        
        for i in 0..<nums.count {
            prefixSum += nums[i] == 0 ? -1 : nums[i]
            
            if let prev = prefixMap[prefixSum] {
                maxLength = maxLength >= i - prev ? maxLength : i - prev
            } else {
                prefixMap[prefixSum] = i
            }
        }
        return maxLength
    }
}
