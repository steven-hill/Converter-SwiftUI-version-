//
//  ResultViewUITests.swift
//  Converter-SwiftUIVersionUITests
//
//  Created by Steven Hill on 28/11/2024.
//

import XCTest

final class ResultViewUITests: XCTestCase {
    
    private var app: XCUIApplication!
    private var resultText: XCUIElement!
    
    override func setUp() {
        app = XCUIApplication()
        app.launch()
        resultText = app.staticTexts["Result"]
        continueAfterFailure = false
    }
    
    override func tearDown() {
        app = nil
        resultText = nil
    }
    
    func test_resultView_exists() {
        XCTAssertTrue(resultText.exists)
    }
    
    func test_resultView_isNotVisibleOnInitialization() {
        XCTAssertFalse(resultText.isHittable, "The result should not be visible on screen on initialization.")
    }
}
