//
//  Tests_2025_04_17.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 17/04/25.
//

import XCTest
@testable import SwiftAlgoClub

final class Tests_2025_04_17: XCTestCase {
    
    func testMoveZeroes_2025_04_17() {
        var query = MoveZeroes_2025_04_17()
        var arr1: [Int] = [0, 1, 0, 3, 12]
        query.moveZeroes(&arr1)
        XCTAssertEqual(arr1, [1, 3, 12, 0, 0])
        
        query = MoveZeroes_2025_04_17()
        var arr2: [Int] = [8, 4, 0, 0, 7, 5, 0, 0, 11, 1]
        query.moveZeroes(&arr2)
        XCTAssertEqual(arr2, [8, 4, 7, 5, 11, 1, 0, 0, 0, 0])
    }
    
    func testMergeSortedArrays_2025_04_17() {
        
        var query = MergeSortedArrays_2025_04_17()
        var arr1: [Int] = [1, 3, 5, 7, 0, 0, 0, 0]
        var arr2: [Int] = [2, 4, 6, 8]
        query.merge(&arr1, 4, arr2, 4)
        XCTAssertEqual(arr1, [1, 2, 3, 4, 5, 6, 7, 8])
        
        query = MergeSortedArrays_2025_04_17()
        arr1 = [1]
        arr2 = []
        query.merge(&arr1, 1, arr2, 0)
        XCTAssertEqual(arr1, [1])
    }
    
    func testTwoSum2_2025_04_17() {
        var query = TwoSum2_2025_04_17()
        let nums: [Int] = [2, 7, 11, 15]
        let target: Int = 9
        let result: [Int] = query.twoSum(nums, target)
        XCTAssertEqual(result, [1, 2])
        
        query = TwoSum2_2025_04_17()
        let nums2 = [2, 3, 4]
        let target2 = 6
        let result2 = query.twoSum(nums2, target2)
        XCTAssertEqual(result2, [1, 3])
    }
}
