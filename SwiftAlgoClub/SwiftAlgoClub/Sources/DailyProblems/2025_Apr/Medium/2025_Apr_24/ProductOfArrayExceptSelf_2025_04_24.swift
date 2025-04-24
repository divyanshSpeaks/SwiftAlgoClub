//
//  ProductOfArrayExceptSelf_2025_04_24.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 24/04/25.
//

/*
 Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].
 
 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
 
 You must write an algorithm that runs in O(n) time and without using the division operation.
 */

// https://leetcode.com/problems/product-of-array-except-self/description/

struct ProductOfArrayExceptSelf_2025_04_24 {
    
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var result = Array(repeating: 0, count: n)
        
        var prefix = 1
        var i = 0
        while i < n {
            result[i] = prefix
            prefix *= nums[i]
            i += 1
        }
        
        var suffix = 1
        i = n-1
        while i >= 0 {
            result[i] *= suffix
            suffix *= nums[i]
            i -= 1
        }
        
        return result
    }
}
