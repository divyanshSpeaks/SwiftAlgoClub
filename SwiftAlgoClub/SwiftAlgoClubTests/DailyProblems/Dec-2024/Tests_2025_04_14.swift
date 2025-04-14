//
//  Tests_2025_04_14.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 14/04/25.
//

import XCTest
@testable import SwiftAlgoClub


final class Tests_2025_04_14: XCTestCase {
    
    func testRangeSumQueryImmutable_2025_04_14() {
        let rangeSum = RangeSumQueryImmutable_2025_04_14([-2, 0, 3, -5, 2, -1])
        XCTAssertEqual(rangeSum.sumRange(0, 2), 1)   // -2 + 0 + 3
        XCTAssertEqual(rangeSum.sumRange(2, 5), -1)  // 3 + (-5) + 2 + (-1)
        XCTAssertEqual(rangeSum.sumRange(0, 5), -3)  // sum of all
    }
    
    func testSubarraySumEqualsK_2025_04_14() {
        var query = SubarraySumEqualsK_2025_04_14()
        XCTAssertEqual(query.subarraySum([1,1,1], 2), 2)
        query = SubarraySumEqualsK_2025_04_14()
        XCTAssertEqual(query.subarraySum([1,2,3], 3), 2)
        query = SubarraySumEqualsK_2025_04_14()
        XCTAssertNotEqual(query.subarraySum([1,2,3], 2), 3)
    }
    
    func testSubarraySumsDivisiblebyK_2025_04_14() {
        var query = SubarraySumsDivisiblebyK_2025_04_14()
        XCTAssertEqual(query.subarraysDivByK([4,5,0,-2,-3,1], 5), 7)
        query = SubarraySumsDivisiblebyK_2025_04_14()
        XCTAssertEqual(query.subarraysDivByK([5], 9), 0)
        query = SubarraySumsDivisiblebyK_2025_04_14()
        XCTAssertNotEqual(query.subarraysDivByK([4,5,0,-2,-3,1], 5), 4)
    }
}
