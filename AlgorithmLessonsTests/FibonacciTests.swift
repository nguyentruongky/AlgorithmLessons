//
//  FibonacciTests.swift
//  AlgorithmLessons
//
//  Created by Ky Nguyen on 11/10/16.
//  Copyright © 2016 Ky Nguyen. All rights reserved.
//

import XCTest
@testable import AlgorithmLessons

class FibonacciTests: XCTestCase {
    
    let fibonacci = Fibonacci()
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    func testNextFibonacci() {
        
        XCTAssertEqual(fibonacci.nextFibonacci(number: 10), 13)
        XCTAssertEqual(fibonacci.nextFibonacci(number: 377), 610)
        XCTAssertEqual(fibonacci.nextFibonacci(number: 3000), 4181)
        XCTAssertEqual(fibonacci.nextFibonacci(number: 11000), 17711)
        XCTAssertEqual(fibonacci.nextFibonacci(number: 56), 89)
    }
    
    func testIsFibonacciTrue() {
        
        XCTAssertTrue(fibonacci.isFibonacci(number: 3))
        XCTAssertTrue(fibonacci.isFibonacci(number: 55))
        XCTAssertTrue(fibonacci.isFibonacci(number: 89))
        XCTAssertTrue(fibonacci.isFibonacci(number: 144))
        XCTAssertTrue(fibonacci.isFibonacci(number: 17711))
    }
    
    func testFibonacciFalse() {
        XCTAssertFalse(fibonacci.isFibonacci(number: 4))
        XCTAssertFalse(fibonacci.isFibonacci(number: 56))
        XCTAssertFalse(fibonacci.isFibonacci(number: 140))
        XCTAssertFalse(fibonacci.isFibonacci(number: 17000))
    }
    
}
