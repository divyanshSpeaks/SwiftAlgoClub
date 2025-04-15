//
//  Tests_2025_04_15.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 15/04/25.
//

import XCTest
@testable import SwiftAlgoClub


final class Tests_2025_04_15: XCTestCase {
    
    func testContinuousSubarraySum_2025_04_15() {
        var query = ContinuousSubarraySum_2025_04_15()
        XCTAssertEqual(query.checkSubarraySum([23,2,4,6,7], 6), true)
        query = ContinuousSubarraySum_2025_04_15()
        XCTAssertEqual(query.checkSubarraySum([23,2,4,6,7], 7), true)
        query = ContinuousSubarraySum_2025_04_15()
        XCTAssertEqual(query.checkSubarraySum([23,2,6,4,7], 13), false)
        query = ContinuousSubarraySum_2025_04_15()
        XCTAssertEqual(query.checkSubarraySum([5,0,0,0], 3), true)
        query = ContinuousSubarraySum_2025_04_15()
        XCTAssertEqual(query.checkSubarraySum([2,4,3], 6), true)
    }
    
    func testContiguousArray_2025_04_15() {
        var query = ContiguousArray_2025_04_15()
        XCTAssertEqual(query.findMaxLength([0,1]), 2)
        query = ContiguousArray_2025_04_15()
        XCTAssertEqual(query.findMaxLength([0,1,0]), 2)
        query = ContiguousArray_2025_04_15()
        XCTAssertEqual(query.findMaxLength([0,1,1,1,1,1,0,0,0]), 6)
    }
}
