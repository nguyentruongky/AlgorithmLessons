//
//  Fibonacci.swift
//  AlgorithmLessons
//
//  Created by Ky Nguyen on 11/10/16.
//  Copyright © 2016 Ky Nguyen. All rights reserved.
//

import Foundation

struct Fibonacci {
    
    func isFibonacci(number: Double) -> Bool {
        
        // idea: N is a Fibonacci number if and only if (5*N*N + 4) or (5*N*N – 4) is a perfect square!
        let nPower2MultiFive = number * number * Double(5)
        return isPerfectSquare(number: nPower2MultiFive + 4) || isPerfectSquare(number: nPower2MultiFive - 4)
    }
    
    func isPerfectSquare(number: Double) -> Bool {
        let square = Int(sqrt(number))
        return Double(square * square) == number
    }
    
    func nextFibonacci(number: Double) -> Double {
        
        var newNumber = number + 1
        while isFibonacci(number: newNumber) == false {
            
            newNumber += 1
        }
        
        return newNumber
    }
}
