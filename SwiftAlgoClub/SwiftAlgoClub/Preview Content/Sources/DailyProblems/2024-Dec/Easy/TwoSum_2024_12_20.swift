//
//  TwoSum_2024_12_20.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 20/12/24.
//

class TwoSum_2024_12_20 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var numDict: [Int: Int] = [:]
        
        for i in 0..<nums.count {
            
            let num = nums[i]
            let complement = target - num
            if let complementIndex = numDict[complement] {
                return [complementIndex, i]
            }
            
            numDict[num] = i
        }
        return []
    }
}
