//
//  UnitButtonUITests.swift
//  Converter-SwiftUIVersionUITests
//
//  Created by Steven Hill on 24/11/2024.
//

import XCTest

final class UnitButtonUITests: XCTestCase {
    
    private var app: XCUIApplication!

    override func setUp() {
        app = XCUIApplication()
        app.launch()
        continueAfterFailure = false
    }

    override func tearDown() {
        app = nil
    }
    
    func test_checkmarkAppearsOnSelectedUnitButton_whenSelected() {
        let unitButton = app.buttons.matching(identifier: "Unit button")
        let checkmark = unitButton.images["checkmark"]
        XCTAssertTrue(checkmark.exists, "When selected the checkmark should appear.")
    }
}
