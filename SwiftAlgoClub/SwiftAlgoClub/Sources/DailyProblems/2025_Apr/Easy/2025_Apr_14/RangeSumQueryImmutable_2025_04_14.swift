//
//  RangeSumQueryImmutable_2025_04_14.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 14/04/25.
//

/*
 Given an integer array nums, handle multiple queries of the following type:
 
 Calculate the sum of the elements of nums between indices left and right inclusive where left <= right.
 Implement the NumArray class:
 
 NumArray(int[] nums) Initializes the object with the integer array nums.
 int sumRange(int left, int right) Returns the sum of the elements of nums between indices left and right inclusive (i.e. nums[left] + nums[left + 1] + ... + nums[right]).
 */

// https://leetcode.com/problems/range-sum-query-immutable/description/


struct RangeSumQueryImmutable_2025_04_14 {
    
    var nums: [Int] = [Int]()
    private var prefixSum: [Int] = [Int]()
    
    init(_ nums: [Int]) {
        self.nums = nums
        self.createPrefixSum()
    }
    
    mutating func createPrefixSum() {
        guard !nums.isEmpty else { return }
        prefixSum = self.nums
        for i in 1..<nums.count {
            prefixSum[i] += prefixSum[i-1]
        }
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        let leftRange = left - 1 < 0 ? 0 : prefixSum[left-1]
        return prefixSum[right] - leftRange
    }
}
