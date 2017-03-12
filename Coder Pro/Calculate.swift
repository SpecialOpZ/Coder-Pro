//
//  Calculate.swift
//  Coder Pro
//
//  Created by Anthony on 5/10/16.
//  Copyright © 2016 appalgorithm. All rights reserved.
//

import Foundation

class Calculate {
    
    var newNumber = 0
    
    func testNumber(_ number:Int) -> Bool {
        let testNumber = generateRandom()
        newNumber = testNumber
        switch testNumber == number {
        case true:
            return true
        case false:
            return false
        }
    }
    
    func generateRandom() -> Int {
        let randomNUmber = Int(arc4random_uniform(10))
        return randomNUmber
    }
}
