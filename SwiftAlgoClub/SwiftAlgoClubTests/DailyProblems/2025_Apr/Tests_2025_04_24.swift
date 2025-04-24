//
//  Tests_2025_04_24.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 23/04/25.
//

import XCTest
@testable import SwiftAlgoClub

final class Tests_2025_04_24: XCTestCase {
    
    func testRotateArray_2025_04_23() {
        
        let query = RotateArray_2025_04_24()
        var num: [Int] = [1,2,3,4,5,6,7]
        query.rotate(&num, 3)
        XCTAssertEqual(num, [5,6,7,1,2,3,4])
        
        num = [1,2]
        query.rotate(&num, 1)
        XCTAssertEqual(num, [2,1])
    }
    
    func testBestTimeToBuyAndSellStockII_2025_04_24() {
        let query = BestTimeToBuyAndSellStockII_2025_04_24()
        XCTAssertEqual(query.maxProfit([7,1,5,3,6,4]), 7)
        XCTAssertEqual(query.maxProfit([1,2,3,4,5]), 4)
    }
    
    func testIncreasingTripletSubsequence_2025_04_24() {
        let query = IncreasingTripletSubsequence_2025_04_24()
        XCTAssertTrue(query.increasingTriplet([1,2,3,4,5]))
        XCTAssertFalse(query.increasingTriplet([5,4,3,2,1]))
        XCTAssertTrue(query.increasingTriplet([2,1,5,0,4,6]))
    }
    
    func testNumberOfZeroFilledSubarrays_2025_04_24() {
        let query = NumberOfZeroFilledSubarrays_2025_04_24()
        XCTAssertEqual(query.zeroFilledSubarray([1,3,0,0,2,0,0,4]), 6)
        XCTAssertEqual(query.zeroFilledSubarray([2,10,2019]), 0)
        XCTAssertEqual(query.zeroFilledSubarray([0,0,0,2,0,0]), 9)
    }
    
    func testProductOfArrayExceptSelf_2025_04_24() {
        let query = ProductOfArrayExceptSelf_2025_04_24()
        XCTAssertEqual(query.productExceptSelf([1,2,3,4]), [24,12,8,6])
        XCTAssertEqual(query.productExceptSelf([-1,-2,-3,-4]), [-24,-12,-8,-6])
        XCTAssertEqual(query.productExceptSelf([-1,1,0,-3,3]), [0,0,9,0,0])
    }
}
