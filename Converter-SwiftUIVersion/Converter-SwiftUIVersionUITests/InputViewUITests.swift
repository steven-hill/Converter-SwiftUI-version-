//
//  InputViewUITests.swift
//  Converter-SwiftUIVersionUITests
//
//  Created by Steven Hill on 26/11/2024.
//

import XCTest

final class InputViewUITests: XCTestCase {
    
    private var app: XCUIApplication!
    private var textField: XCUIElement!

    override func setUp() {
        app = XCUIApplication()
        app.launch()
        textField = app.textFields["Input amount text field"]
        continueAfterFailure = false
    }

    override func tearDown() {
        app = nil
        textField = nil
    }
    
    func test_inputView_exists() {
        XCTAssertTrue(textField.exists, "Text field should exist.")
    }
    
    func test_user_canInteractWithInputView() {
        XCTAssertTrue(textField.isHittable, "Text field should be visible on screen and be interactive.")
    }
    
    func test_inputView_displaysCorrectPlaceholderText() {
        XCTAssertEqual(textField.placeholderValue, "Amount to convert", "Placeholder text should be 'Amount to convert'.")
    }
}
