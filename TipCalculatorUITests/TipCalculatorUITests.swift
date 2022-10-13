//
//  TipCalculatorUITests.swift
//  TipCalculatorUITests
//
//  Created by Justin Maronde on 10/13/22.
//

import XCTest

class when_ContentView_is_shown: XCTestCase {
    
    private var app: XCUIApplication!
    
    override func setUpWithError() throws {
        app = XCUIApplication()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDownWithError() throws {
        app = nil
    }

    func test_should_make_sure_totalTextField_shows_default_value() {

        let totalTextField = app.textFields["totalTextField"]
        
        XCTAssertEqual(totalTextField.value as! String, "Enter total")
        
    }
    
    func test_percent_selection_starts_with_default_value_20() {
        
        let segmentedControl = app.segmentedControls["tipPercentageSegmentedControl"]
        let twentyPercentSegmentButton = segmentedControl.buttons.element(boundBy: 1)
        
        XCTAssertEqual(twentyPercentSegmentButton.label, "20%")
        XCTAssertTrue(twentyPercentSegmentButton.isSelected)
    }
    
}

class when_calculate_button_is_pressed_for_valid_input: XCTestCase {
    
    private var app: XCUIApplication!
    
    override func setUpWithError() throws {
        app = XCUIApplication()
        continueAfterFailure = false
        app.launch()
        
        let totalTextField = app.textFields["totalTextField"]
        totalTextField.tap()
        totalTextField.typeText("100")
        
        let calcuateTipButton = app.buttons["calculateTipButton"]
        calcuateTipButton.tap()
    }
    
    override func tearDownWithError() throws {
        app = nil
    }
    
    func test_tip_is_shown_for_valid_input_amount() {
        let tipText = app.staticTexts["tipTextValue"]
        let _ = tipText.waitForExistence(timeout: 0.5)
        XCTAssertEqual(tipText.label, "$20.00")
    }
    
}

class when_calculate_button_is_pressed_for_Invalid_input: XCTestCase {
    
    private var app: XCUIApplication!
    
    override func setUpWithError() throws {
        app = XCUIApplication()
        continueAfterFailure = false
        app.launch()
        
        let totalTextField = app.textFields["totalTextField"]
        totalTextField.tap()
        totalTextField.typeText("-100")
        
        let calcuateTipButton = app.buttons["calculateTipButton"]
        calcuateTipButton.tap()
    }
    
    override func tearDownWithError() throws {
        app = nil
    }
    
    func test_should_clear_tip_label_for_invalid_input() {
        let tipText = app.staticTexts["tipTextValue"]
        let _ = tipText.waitForExistence(timeout: 0.5)
        XCTAssertEqual(tipText.label, "")
        
    }
    
    func test_error_message_is_shown_for_invalid_input() {
        let messageText = app.staticTexts["messageLabelText"]
        let _ = messageText.waitForExistence(timeout: 0.5)
        XCTAssertEqual(messageText.label, "Invalid Input")
    }
}
