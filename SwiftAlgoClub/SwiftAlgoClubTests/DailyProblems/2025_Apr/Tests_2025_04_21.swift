//
//  Tests_2025_04_21.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 21/04/25.
//

import XCTest
@testable import SwiftAlgoClub

final class Tests_2025_04_21: XCTestCase {
    
    func testContainerWithMostWater_2025_04_21() {
        let query = ContainerWithMostWater_2025_04_21()
        XCTAssertEqual(query.maxArea([1,8,6,2,5,4,8,3,7]), 49)
        XCTAssertEqual(query.maxArea([1,1]), 1)
    }
    
    func testTrapRainWater_2025_04_21() {
        let query = TrappingRainWater_2025_04_21()
        XCTAssertEqual(query.trap([0,1,0,2,1,0,1,3,2,1,2,1]), 6)
        XCTAssertEqual(query.trap([4,2,0]), 0)
    }
}
