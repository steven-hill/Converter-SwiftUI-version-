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
    
    func test_backgroundView_exists() throws {
        let app = XCUIApplication()
        app.launch()
        
        let backgroundView = app.otherElements["Background view"]
                
        XCTAssertTrue(backgroundView.exists, "The background view should exist.")
    }
    
    func test_backgroundView_coversTheEntireScreen() throws {
        let app = XCUIApplication()
        app.launch()
        
        let backgroundView = app.otherElements["Background view"]
        let appFrame = app.windows.firstMatch.frame
        
        XCTAssertEqual(backgroundView.frame, appFrame, "The background view should ignore the safe area and cover the entire screen.")
    }
    
    func test_backgroundView_isBehindTitleView() throws {
        let app = XCUIApplication()
        app.launch()
        
        let titleView = app.staticTexts["Measurement converter"]
        
        XCTAssertTrue(titleView.exists && titleView.isHittable, "The title view should exist and be in front of the background view.")
    }
}
