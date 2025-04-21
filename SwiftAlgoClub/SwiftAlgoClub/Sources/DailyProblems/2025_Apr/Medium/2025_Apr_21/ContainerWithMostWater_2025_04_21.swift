//
//  ContainerWithMostWater_2025_04_21.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 21/04/25.
//

/*
 You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).
 
 Find two lines that together with the x-axis form a container, such that the container contains the most water.
 
 Return the maximum amount of water a container can store.
 
 Notice that you may not slant the container.
 */

// https://leetcode.com/problems/container-with-most-water/description/

struct ContainerWithMostWater_2025_04_21 {
    
    func maxArea(_ height: [Int]) -> Int {
        
        var left = 0
        var right = height.count - 1
        var maxArea = 0
        
        while left < right {
            
            let currentArea = min(height[left], height[right]) * (right - left)
            maxArea = maxArea > currentArea ? maxArea : currentArea
            
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        
        return maxArea
    }
}
