//
//  TipCalculator.swift
//  TipCalculator
//
//  Created by Justin Maronde on 10/13/22.
//

import Foundation

struct TipCalculator {
    
    func calculateTip(total: Double, tipPercentage: Double) -> Double {
        return total * tipPercentage
    }
}
