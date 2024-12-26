//
//  ShuffleArray_2024_12_21.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 21/12/24.
//

//Problem Description:
//Given the array nums consisting of 2n elements in the form [x1,x2,...,xn,y1,y2,...,yn].
//Return the array in the form [x1,y1,x2,y2,...,xn,yn].

// https://leetcode.com/problems/shuffle-the-array/description/

struct ShuffleArray_2024_12_21 {
    
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        
        var ans: [Int] = Array(repeating: 0, count: 2*n)
        var j = 0
        for i in 0..<n {
            ans[j] = nums[i]
            j += 1
            ans[j] = nums[i+n]
            j += 1
        }
        return ans
    }
}
