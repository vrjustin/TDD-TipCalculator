//
//  ContentViewPage.swift
//  TipCalculatorUITests
//
//  Created by Justin Maronde on 10/13/22.
//

import Foundation
import XCTest

struct ContentViewPage {
    
    var app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    var totalTextField: XCUIElement {
        app.textFields["totalTextField"]
    }
    
    var calculateTipButton: XCUIElement {
        app.buttons["calculateTipButton"]
    }
    
    var tipPercentageSegmentedControl: XCUIElement {
        app.segmentedControls["tipPercentageSegmentedControl"]
    }
    
    var tipText: XCUIElement {
        app.staticTexts["tipTextValue"]
    }
    
    var messageText: XCUIElement {
        app.staticTexts["messageLabelText"]
    }
    
}
