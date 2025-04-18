//
//  MergeSortedArrays_2025_04_17.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 17/04/25.
//

/*
 You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.
 
 Merge nums1 and nums2 into a single array sorted in non-decreasing order.
 
 The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.
 */

// https://leetcode.com/problems/merge-sorted-array/description/

struct MergeSortedArrays_2025_04_17 {
    
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        var last = m + n - 1
        var i = m - 1
        var j = n - 1
        
        while j >= 0 {
            if i >= 0, nums1[i] > nums2[j] {
                nums1[last] = nums1[i]
                i -= 1
            } else {
                nums1[last] = nums2[j]
                j -= 1
            }
            
            last -= 1
        }
    }
}
