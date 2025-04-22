//
//  BestTimeToBuyAndSellStock_2025_04_22.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 22/04/25.
//

/*
 You are given an array prices where prices[i] is the price of a given stock on the ith day.
 
 You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.
 
 Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
 */

// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/

struct BestTimeToBuyAndSellStock_2025_04_22 {
    
    func maxProfit(_ prices: [Int]) -> Int {
        guard !prices.isEmpty else { return 0 }
        
        var minPrice = prices[0]
        var maxProfit = 0
        
        for price in prices {
            minPrice = min(minPrice, price)
            maxProfit = max(maxProfit, price - minPrice)
        }
        
        return maxProfit
    }
}
