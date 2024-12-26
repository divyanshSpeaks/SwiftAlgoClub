//
//  SortPeople_2024_12_22.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 22/12/24.
//

//Problem Description:
//You are given an array of strings names, and an array heights that consists of distinct positive integers. Both arrays are of length n.
//For each index i, names[i] and heights[i] denote the name and height of the ith person.
//Return names sorted in descending order by the people's heights.

// https://leetcode.com/problems/sort-the-people/description/

struct SortPeople_2024_12_22 {
    
    func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
        
        let combinedArray = zip(names, heights).map { ($0, $1) }
        let sorted = combinedArray.sorted { $0.1 > $1.1 }
        return sorted.map { $0.0 }
    }
}
