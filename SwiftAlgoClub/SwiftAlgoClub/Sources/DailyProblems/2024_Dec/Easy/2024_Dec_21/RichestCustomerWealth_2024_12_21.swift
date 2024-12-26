//
//  RichestCustomerWealth_2024_12_21.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 26/12/24.
//

//Problem Description:
//You are given an m x n integer grid accounts where accounts[i][j] is the amount of money the i​​​​​​​​​​​th​​​​ customer has in the j​​​​​​​​​​​th​​​​ bank. Return the wealth that the richest customer has.
//A customer's wealth is the amount of money they have in all their bank accounts. The richest customer is the customer that has the maximum wealth.

// https://leetcode.com/problems/richest-customer-wealth/description/

struct RichestCustomerWealth_2024_12_21 {
   
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var richestWealth = 0

        for account in accounts {
            let totalWealth = account.reduce(0, +)
            richestWealth = totalWealth > richestWealth ? totalWealth : richestWealth
        }
        return richestWealth
    }
    
}
