//
//  Converter_SwiftUIVersionUITests.swift
//  Converter-SwiftUIVersionUITests
//
//  Created by Steven Hill on 27/09/2024.
//

import XCTest

final class TitleViewUITests: XCTestCase {
    
    private var app: XCUIApplication!

    override func setUp() {
        app = XCUIApplication()
        app.launch()
        continueAfterFailure = false
    }

    override func tearDown() {
        app = nil
    }

    func test_titleView_displaysCorrectText() {
        let titleViewText = app.staticTexts["TitleView text"]

        XCTAssertTrue(titleViewText.exists, "The title text should exist.")
        XCTAssertEqual(titleViewText.label, "Measurement converter", "The title text should be 'Measurement converter'.")
    }
}
