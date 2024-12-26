//
//  DistinctString_2024_12_22.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 22/12/24.
//

//Problem Description:
//A distinct string is a string that is present only once in an array.
//Given an array of strings arr, and an integer k, return the kth distinct string present in arr. If there are fewer than k distinct strings, return an empty string "".
//Note that the strings are considered in the order in which they appear in the array.

// https://leetcode.com/problems/kth-distinct-string-in-an-array/description/

struct DistinctString_2024_12_22 {
    
    func kthDistinct(_ arr: [String], _ k: Int) -> String {
        
        var distinctDict: [String: Int] = [:]
        for str in arr {
            distinctDict[str, default: 0] += 1
        }
        
        let distinctArr = arr.filter { distinctDict[$0] == 1}
        return distinctArr.count >= k ? distinctArr[k-1]: ""
    }
}
