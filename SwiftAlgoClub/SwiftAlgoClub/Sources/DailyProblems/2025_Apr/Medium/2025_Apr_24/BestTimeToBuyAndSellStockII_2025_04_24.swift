//
//  BestTimeToBuyAndSellStockII_2025_04_24.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 24/04/25.
//

/*
 You are given an integer array prices where prices[i] is the price of a given stock on the ith day.
 
 On each day, you may decide to buy and/or sell the stock. You can only hold at most one share of the stock at any time. However, you can buy it then immediately sell it on the same day.
 
 Find and return the maximum profit you can achieve.
 */

// https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/description/

struct BestTimeToBuyAndSellStockII_2025_04_24 {
    
    func maxProfit(_ prices: [Int]) -> Int {
        
        guard !prices.isEmpty else { return 0 }
        var maxProfit = 0
        var i = 1
        while i < prices.count {
            if prices[i] > prices[i-1] {
                maxProfit += prices[i] - prices[i-1]
            }
            i += 1
        }
        
        return maxProfit
    }
}
