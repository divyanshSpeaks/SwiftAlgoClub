//
//  RotateArray_2025_04_24.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 23/04/25.
//

/*
 Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.
 
 Example 1:
 
 Input: nums = [1,2,3,4,5,6,7], k = 3
 Output: [5,6,7,1,2,3,4]
 Explanation:
 rotate 1 steps to the right: [7,1,2,3,4,5,6]
 rotate 2 steps to the right: [6,7,1,2,3,4,5]
 rotate 3 steps to the right: [5,6,7,1,2,3,4]
 */

// https://leetcode.com/problems/rotate-array/description/

struct RotateArray_2025_04_24 {
    
    func rotate(_ nums: inout [Int], _ k: Int) {
        
        let n = nums.count
        let k = k % n
        
        func reverse(_ start: Int, _ end: Int) {
            var start = start
            var end = end
            while start < end {
                nums[start] += nums[end]
                nums[end] = nums[start] - nums[end]
                nums[start] -= nums[end]
                start += 1
                end -= 1
            }
        }
        
        reverse(0, n-1)
        reverse(0, k-1)
        reverse(k, n-1)
    }
}


