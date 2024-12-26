//
//  Test_2024_12_21.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 21/12/24.
//

import XCTest
@testable import SwiftAlgoClub

final class Test_2024_12_21: XCTestCase {
    
    func testGoodPairs_2024_12_21() {
        // Test cases for number of good pairs
        // A pair (i, j) is called good if nums[i] == nums[j] and i < j
        
        let solution = GoodPairs_2024_12_21()
        XCTAssertEqual(solution.numIdenticalPairs([1,2,3,1,1,3]), 4, "There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.")
        XCTAssertEqual(solution.numIdenticalPairs([1,1,1,1]), 6, " Each pair in the array are good.")
        XCTAssertNotEqual(solution.numIdenticalPairs([1,2,3]), 2, "No good pair in this array")
    }
    
    func testBuildArrayPermutation_2024_12_21() {
        // Test cases for build array from permutation
        
        let solution = BuildArrayPermutation_2024_12_21()
        XCTAssertEqual(solution.buildArray([0,2,1,5,3,4]), [0,1,2,4,5,3], "Built array should match the response")
        XCTAssertEqual(solution.buildArray([5,0,1,2,3,4]), [4,5,0,1,2,3], "Built array should match the response")
        XCTAssertNotEqual(solution.buildArray([5,0,1,2,3,4]), [0,1,2,4,5,3], "Built array should not match the response")
    }
    
    func testShuffleArray_2024_12_21() {
        // Test cases for shuffle the array
        
        let solution = ShuffleArray_2024_12_21()
        XCTAssertEqual(solution.shuffle([2,5,1,3,4,7], 3), [2,3,5,4,1,7], "shuffled array should match the response")
        XCTAssertEqual(solution.shuffle([1,2,3,4,4,3,2,1], 4), [1,4,2,3,3,2,4,1], "shuffled array should match the response")
        XCTAssertNotEqual(solution.shuffle([1,1,2,2], 2), [1,1,2,2], "shuffled array should not match the response")
    }
    
    func testWordsContainingCharacter_2024_12_21() {
        // Test cases for words containing character
        
        let solution = WordsContainingCharacter_2024_12_21()
        XCTAssertEqual(solution.findWordsContaining(["leet","code"], "e"), [0,1], "e occurs in both words: leet, and code")
        XCTAssertEqual(solution.findWordsContaining(["abc","bcd","aaaa","cbc"], "a"), [0,2], "a occurs in both words: abc, and aaaa")
        XCTAssertNotEqual(solution.findWordsContaining(["abc","bcd","aaaa","cbc"], "z"), [0,2], "z does not occur in any of the words.")
    }
    
    func testRichestCustomerWealth_2024_12_21() {
        // Test cases for richest customer wealth
        
        let solution = RichestCustomerWealth_2024_12_21()
        XCTAssertEqual(solution.maximumWealth([[1,2,3],[3,2,1]]), 6, "Both customers are considered the richest with a wealth of 6 each")
        XCTAssertEqual(solution.maximumWealth([[1,5],[7,3],[3,5]]), 10, "The 2nd customer is the richest with a wealth of 10.")
        XCTAssertNotEqual(solution.maximumWealth([[2,8,7],[7,1,3],[1,9,5]]), 11, "17 is the wealth of richest person, not 11")
    }
}
