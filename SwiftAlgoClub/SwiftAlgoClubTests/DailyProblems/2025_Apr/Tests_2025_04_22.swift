//
//  Tests_2025_04_22.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 22/04/25.
//

import XCTest
@testable import SwiftAlgoClub

final class Tests_2025_04_22: XCTestCase {
    
    func testMajorityElement_2025_04_22() {
        let query =  MajorityElement_2025_04_22()
        XCTAssertEqual(query.majorityElement([3, 2, 3]), 3)
        XCTAssertEqual(query.majorityElement([2,2,1,1,1,2,2]), 2)
    }
    
    func testRemoveDuplicatesfromSortedArray_2025_04_22() {
        let query =  RemoveDuplicatesfromSortedArray_2025_04_22()
        var nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
        var result = query.removeDuplicates(&nums)
        XCTAssertEqual(result, 5)
        XCTAssertEqual(nums.prefix(result), [0, 1, 2, 3, 4])
        
        nums = [2, 2, 2, 2]
        result = query.removeDuplicates(&nums)
        XCTAssertEqual(result, 1)
        XCTAssertEqual(nums.prefix(result), [2])
    }
    
    func testBestTimeToBuyAndSellStock_2025_04_22() {
        let query =  BestTimeToBuyAndSellStock_2025_04_22()
        XCTAssertEqual(query.maxProfit([7,1,5,3,6,4]), 5)
        XCTAssertEqual(query.maxProfit([7,6,4,3,1]), 0)
        XCTAssertEqual(query.maxProfit([1]), 0)
    }
}

