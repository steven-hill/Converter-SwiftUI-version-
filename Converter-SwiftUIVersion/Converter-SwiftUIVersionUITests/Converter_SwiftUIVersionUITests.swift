//
//  Converter_SwiftUIVersionUITests.swift
//  Converter-SwiftUIVersionUITests
//
//  Created by Steven Hill on 27/09/2024.
//

import XCTest

final class Converter_SwiftUIVersionUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }

    func test_titleView_displaysCorrectText() throws {
        let app = XCUIApplication()
        app.launch()
        
        let titleViewText = app.staticTexts["TitleView text"]

        XCTAssertTrue(titleViewText.exists, "The title text should exist.")
        XCTAssertEqual(titleViewText.label, "Measurement converter", "The title text should be 'Measurement converter'.")
    }
}
