//
//  BinarySearch.swift
//  AlgorithmLessons
//
//  Created by Ky Nguyen on 11/13/16.
//  Copyright © 2016 Ky Nguyen. All rights reserved.
//

import Foundation

struct BinarySearch {
    
    func binarySearchForValue(searchValue: Int, numbers: [Int]) -> Bool {
        
        var leftIndex = 0
        var rightIndex = numbers.count - 1
        
        while leftIndex <= rightIndex {
            
            let middleIndex = (leftIndex + rightIndex) / 2
            let middleValue = numbers[middleIndex]
            
            if searchValue == middleValue {
                return true
            }
            
            if searchValue < middleValue {
                rightIndex = middleIndex - 1
            }
            
            if searchValue > middleValue {
                leftIndex = middleIndex + 1
            }
        }
        
        return false
    }
}
