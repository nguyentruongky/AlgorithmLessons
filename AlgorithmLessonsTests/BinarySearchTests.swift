//
//  BinarySearchTests.swift
//  AlgorithmLessons
//
//  Created by Ky Nguyen on 11/13/16.
//  Copyright © 2016 Ky Nguyen. All rights reserved.
//

import XCTest
@testable import AlgorithmLessons

class BinarySearchTests: XCTestCase {
    
    let numbers = [1, 4, 5, 7, 8, 10, 42, 101]

    func testBinarySearchTrue() {
        
        let search = BinarySearch()
        XCTAssertTrue(search.binarySearchForValue(searchValue: 1, numbers: numbers))
        XCTAssertTrue(search.binarySearchForValue(searchValue: 5, numbers: numbers))
        XCTAssertTrue(search.binarySearchForValue(searchValue: 4, numbers: numbers))
        XCTAssertTrue(search.binarySearchForValue(searchValue: 7, numbers: numbers))
        XCTAssertTrue(search.binarySearchForValue(searchValue: 42, numbers: numbers))
        XCTAssertTrue(search.binarySearchForValue(searchValue: 101, numbers: numbers))
    }
    
    func testBinarySearchFalse() {
        
        let search = BinarySearch()
        XCTAssertFalse(search.binarySearchForValue(searchValue: 12, numbers: numbers))
        XCTAssertFalse(search.binarySearchForValue(searchValue: 100, numbers: numbers))
        XCTAssertFalse(search.binarySearchForValue(searchValue: 18, numbers: numbers))
        XCTAssertFalse(search.binarySearchForValue(searchValue: 6, numbers: numbers))
        XCTAssertFalse(search.binarySearchForValue(searchValue: 9, numbers: numbers))
        XCTAssertFalse(search.binarySearchForValue(searchValue: 11, numbers: numbers))
    }
    
    
}
