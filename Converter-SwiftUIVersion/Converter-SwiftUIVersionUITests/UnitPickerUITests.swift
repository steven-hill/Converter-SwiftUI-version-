//
//  UnitPickerUITests.swift
//  Converter-SwiftUIVersionUITests
//
//  Created by Steven Hill on 18/11/2024.
//

import XCTest
@testable import Converter_SwiftUIVersion

final class UnitPickerUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = true
    }

    override func tearDownWithError() throws {
    }

    func test_unitTypePicker_existsAndIsInitializedCorrectly() {
        let app = XCUIApplication()
        app.launch()

        let unitTypePicker = app.segmentedControls["Unit type picker"]
        
        XCTAssertTrue(unitTypePicker.exists, "Unit type picker should exist.")
    }
    
    func test_unitTypePicker_hasCorrectSegmentLabels() {
        let app = XCUIApplication()
        app.launch()
        
        let unitTypePicker = app.segmentedControls["Unit type picker"]
        let firstUnitType = unitTypePicker.buttons.element(boundBy: 0)
        let secondUnitType = unitTypePicker.buttons.element(boundBy: 1)
        let thirdUnitType = unitTypePicker.buttons.element(boundBy: 2)
        let fourthUnitType = unitTypePicker.buttons.element(boundBy: 3)
        let fifthUnitType = unitTypePicker.buttons.element(boundBy: 4)
        
        XCTAssertEqual(firstUnitType.label, "Distance", "The first segment label should be 'Distance'.")
        XCTAssertEqual(secondUnitType.label, "Duration", "The second segment label should be 'Duration'.")
        XCTAssertEqual(thirdUnitType.label, "Mass", "The third segment label should be 'Mass'.")
        XCTAssertEqual(fourthUnitType.label, "Temperature", "The fourth segment label should be 'Temperature'.")
        XCTAssertEqual(fifthUnitType.label, "Volume", "The fifth segment label should be 'Volume'.")
    }
}
