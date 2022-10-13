//
//  TipCalculatorTests.swift
//  TipCalculatorTests
//
//  Created by Justin Maronde on 10/13/22.
//

import XCTest
@testable import TipCalculator

final class when_calculating_tip_based_on_total_amount: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_should_calculate_tip_successfully() {
        
        let tipCalculator = TipCalculator()
        let tip = tipCalculator.calculateTip(total: 100, tipPercentage: 0.1)
        
        XCTAssertEqual(10, tip)
    }

}
