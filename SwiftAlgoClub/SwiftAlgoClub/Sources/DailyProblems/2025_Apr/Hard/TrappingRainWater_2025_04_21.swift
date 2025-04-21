//
//  TrappingRainWater_2025_04_21.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 21/04/25.
//

/*
 Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.
 */

// https://leetcode.com/problems/trapping-rain-water/description/

struct TrappingRainWater_2025_04_21 {
    
    func trap(_ height: [Int]) -> Int {
        
        var leftMax = 0
        var rightMax = 0
        var left = 0
        var right = height.count - 1
        var waterTrapped = 0
        
        while left < right {
            
            if height[left] < height[right] {
                
                if height[left] >= leftMax {
                    leftMax = height[left]
                } else {
                    waterTrapped += leftMax - height[left]
                }
                
                left += 1
                
            } else {
                
                if height[right] >= rightMax {
                    rightMax = height[right]
                } else {
                    waterTrapped += rightMax - height[right]
                }
                
                right -= 1
            }
        }
        
        return waterTrapped
    }
}
