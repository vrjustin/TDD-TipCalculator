//
//  TipCalculator.swift
//  TipCalculator
//
//  Created by Justin Maronde on 10/13/22.
//

import Foundation

enum TipCalculatorError: Error {
    case invalidInput
}

struct TipCalculator {
    
    func calculateTip(total: Double, tipPercentage: Double) throws -> Double {
        
        if total < 0 {
            throw TipCalculatorError.invalidInput
        }
        
        return total * tipPercentage
    }
}
