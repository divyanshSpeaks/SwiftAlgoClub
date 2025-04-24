//
//  NumberOfZeroFilledSubarrays_2025_04_24.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 24/04/25.
//

/*
 Given an integer array nums, return the number of subarrays filled with 0.
 
 A subarray is a contiguous non-empty sequence of elements within an array.
 */

// https://leetcode.com/problems/number-of-zero-filled-subarrays/description/

struct NumberOfZeroFilledSubarrays_2025_04_24 {
    
    func zeroFilledSubarray(_ nums: [Int]) -> Int {
        
        var count = 0
        var countZero = 0
        
        for num in nums {
            if num == 0 {
                countZero += 1
            } else {
                count += countZero * (countZero + 1) / 2
                countZero = 0
            }
        }
        
        count += countZero * (countZero + 1) / 2
        return count
    }
}
