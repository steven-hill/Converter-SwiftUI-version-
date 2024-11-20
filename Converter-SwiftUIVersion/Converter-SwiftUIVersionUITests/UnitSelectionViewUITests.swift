//
//  UnitSelectionViewUITests.swift
//  Converter-SwiftUIVersionUITests
//
//  Created by Steven Hill on 19/11/2024.
//

import XCTest

final class UnitSelectionViewUITests: XCTestCase {
    
    private var app: XCUIApplication!
    private var convertFromUnitSelectionView: XCUIElement!
    private var convertToUnitSelectionView: XCUIElement!

    override func setUp() {
        app = XCUIApplication()
        app.launch()
        convertFromUnitSelectionView = app.staticTexts["Convert from unit selection view"]
        convertToUnitSelectionView = app.staticTexts["Convert to unit selection view"]
        continueAfterFailure = false
    }

    override func tearDown() {
        app = nil
        convertFromUnitSelectionView = nil
        convertToUnitSelectionView = nil
    }

    func test_convertFromUnitSelectionView_existsAndDisplaysCorrectLabel() {
        XCTAssertTrue(convertFromUnitSelectionView.exists, "The convert from unit selection view should exist.")
        XCTAssertEqual(convertFromUnitSelectionView.label, "Convert from", "The label should be 'Convert from'.")
    }
    
    func test_convertToUnitSelectionView_existsAndDisplaysCorrectLabel() {
        XCTAssertTrue(convertToUnitSelectionView.exists, "The convert to unit selection view should exist.")
        XCTAssertEqual(convertToUnitSelectionView.label, "Convert to", "The label should be 'Convert to'.")
    }
    
    func test_renderedUnitButtonsOnScreenForDistanceOnAppLaunch_numbersSixteenInTotal() {
        let unitButtons = app.buttons.matching(identifier: "Unit button")
        XCTAssertEqual(unitButtons.count, 16) // Currently 8 appear on screen on app launch in each VStack, so 16 in total.
    }
}
