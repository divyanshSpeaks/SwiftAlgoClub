//
//  Tests_2024_12_22.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 22/12/24.
//

import XCTest
@testable import SwiftAlgoClub

final class Test_2024_12_22: XCTestCase {
    
    func testDistinctString_2024_12_22() {
        // Test cases to find Kth distinct string in an array
        
        let solution = DistinctString_2024_12_22()
        XCTAssertEqual(solution.kthDistinct(["d","b","c","b","c","a"], 2), "a", "The only distinct strings in arr are 'd' and 'a'. Since k == 2, 'a' is returned.")
        XCTAssertEqual(solution.kthDistinct(["aaa","aa","a"], 1), "aaa", "All strings in arr are distinct, so the 1st string 'aaa' is returned.")
        XCTAssertNotEqual(solution.kthDistinct(["a","b","a"], 3), "b", "The only distinct string is 'b' but since there are fewer than 3 distinct strings, we return an empty string.")
    }
    
    func testMinMovesToSeat_2024_12_22() {
        // Test cases to find minimum number of moves to seat everyone
        
        let solution = MinMovesToSeat_2024_12_22()
        XCTAssertEqual(solution.minMovesToSeat([3,1,5], [2,7,4]), 4, "In total, 1 + 2 + 1 = 4 moves were used.")
        XCTAssertEqual(solution.minMovesToSeat([4,1,5,9], [1,3,2,6]), 7, "In total, 0 + 1 + 3 + 3 = 7 moves were used.")
        XCTAssertNotEqual(solution.minMovesToSeat([2,2,6,6], [1,3,2,6]), 10, "In total, 1 + 3 + 0 + 0 = 4 moves were used.")
    }
    
    func testSortPeople_2024_12_22() {
        // Test cases for sorting people based on their heights
        
        let solution = SortPeople_2024_12_22()
        XCTAssertEqual(solution.sortPeople(["Mary","John","Emma"], [180,165,170]), ["Mary","Emma","John"], "Mary is the tallest, followed by Emma and John.")
        XCTAssertEqual(solution.sortPeople(["Alice","Bob","Bob"], [155,185,150]), ["Bob","Alice","Bob"], "The first Bob is the tallest, followed by Alice and the second Bob.")
        XCTAssertNotEqual(solution.sortPeople(["Mary","John","Emma"], [180,165,170]), ["John","Mary","Emma"], "Mary is the tallest, followed by Emma and John.")
    }
}
