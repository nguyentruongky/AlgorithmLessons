//
//  ReverseStringTest.swift
//  AlgorithmLessons
//
//  Created by Ky Nguyen on 11/10/16.
//  Copyright © 2016 Ky Nguyen. All rights reserved.
//

import XCTest
@testable import AlgorithmLessons

class ReverseStringTest: XCTestCase {
    
    let string = ReverseString()
    
    func testReverseStringByCharacters() {
        XCTAssertEqual(string.reverseByCharacter(string: "abcde"), "edcba", "")
        XCTAssertEqual(string.reverseByCharacter(string: "abcde 1234"), "4321 edcba", "")
        XCTAssertEqual(string.reverseByCharacter(string: ""), "", "")
    }
    
    func testReverseStringByWords() {
        XCTAssertEqual(string.reverseByWord(string: "Ky Ng"), "yK gN", "")
        XCTAssertEqual(string.reverseByWord(string: "KyNguyen"), "neyugNyK", "")
    }
    
}
