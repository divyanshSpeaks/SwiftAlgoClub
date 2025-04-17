//
//  Tests_2024_12_20.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 20/12/24.
//

import XCTest
@testable import SwiftAlgoClub

final class Tests_2024_12_20: XCTestCase {
    
    func testTwoSum_2024_12_20() {
        // Test cases for Two sum
        
        let solution = TwoSum_2024_12_20()
        XCTAssertEqual(solution.twoSum([2, 7, 11, 15], 9).sorted(), [0, 1], "Expected indices [0, 1] for input [2, 7, 11, 15] with target 9")
        XCTAssertEqual(solution.twoSum([3, 2, 4], 6).sorted(), [1, 2], "Expected indices [1, 2] for input [3, 2, 4] with target 6")
        XCTAssertEqual(solution.twoSum([3, 3], 6).sorted(), [0, 1], "Expected indices [0, 1] for input [3, 3] with target 6")
        XCTAssertEqual(solution.twoSum([1, 2, 3], 10), [], "Expected no solution for input [1, 2, 3] with target 10")
    }
    
    func testPalindromeNumber_2024_12_20() {
        // Test cases for Palindrome number
        
        let solution = PalindromeNumber_2024_12_20()
        XCTAssertTrue(solution.isPalindrome(121), "121 should be a palindrome")
        XCTAssertTrue(solution.isPalindrome(5), "5 should be a palindrome")
        XCTAssertTrue(solution.isPalindrome(12321), "12321 should be a palindrome")
        XCTAssertFalse(solution.isPalindrome(-121), "-121 should not be a palindrome")
        XCTAssertFalse(solution.isPalindrome(12331), "12331 should not be a palindrome")
    }
    
    func testValidParentheses_2024_12_20() {
        // Test cases for valid parentheses
        
        let solution = ValidParentheses_2024_12_20()
        XCTAssertTrue(solution.isValid("()[]{}"), "()[]{} should be a valid string")
        XCTAssertTrue(solution.isValid("([])"), "([]) should be a valid string")
        XCTAssertFalse(solution.isValid("(]"), "()[]{} should not be a valid string")
    }
    
    func testNumberOfSeniorCitizens_2024_12_20() {
        // Test cases for counting number of senior citizens who are older than age range provided
        
        let solution = NumberOfSeniorCitizens_2024_12_20()
        XCTAssertEqual(solution.countSeniorsWhoAre(olderThan: 60, ["7868190130M7522","5303914400F9211","9273338290F4010"]), 2, "The passengers at indices 0, 1, and 2 have ages 75, 92, and 40. Thus, there are 2 people who are over 60 years old.")
        XCTAssertEqual(solution.countSeniorsWhoAre(olderThan: 50, ["1313579440F2036","2921522980M5644"]), 1, " None of the passengers are older than 60.")
    }
    
    func testFinalValueOfVariable_2024_12_20() {
        // Test cases for final value of variable after performing operations
        
        let solution = FinalValueOfVariable_2024_12_20()
        XCTAssertEqual(solution.finalValueAfterOperations(["--X","X++","X++"]), 1, "Final value after performing mentioned operations is valid")
        XCTAssertEqual(solution.finalValueAfterOperations(["++X","++X","X++"]), 3, "Final value after performing mentioned operations is valid")
        XCTAssertNotEqual(solution.finalValueAfterOperations(["X++","++X","--X","X--"]), 2, "Final value after performing mentioned operations is invalid")
    }
}
