//
//  MoveZeroes_2025_04_17.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 17/04/25.
//

/*
 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

 Note that you must do this in-place without making a copy of the array.
 */
 
// https://leetcode.com/problems/move-zeroes/description/

struct MoveZeroes_2025_04_17 {
    
    func moveZeroes(_ nums: inout [Int]) {
        
        var left = 0
        var right = 0
        
        while right < nums.count {
            if nums[right] != 0 {
                let temp = nums[right]
                nums[right] = nums[left]
                nums[left] = temp
                left += 1
            }
            right += 1
        }
    }
}

