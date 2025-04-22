//
//  MajorityElement_2025_04_22.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 22/04/25.
//

/*
 Given an array nums of size n, return the majority element.
 
 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.
 */

// https://leetcode.com/problems/majority-element/description/

struct MajorityElement_2025_04_22 {
    
    func majorityElement(_ nums: [Int]) -> Int {
        var count = 0
        var candidate = 0
        
        for num in nums {
            if count == 0 {
                candidate = num
            }
            
            count += num == candidate ? 1 : -1
        }
        
        return candidate
    }
}
