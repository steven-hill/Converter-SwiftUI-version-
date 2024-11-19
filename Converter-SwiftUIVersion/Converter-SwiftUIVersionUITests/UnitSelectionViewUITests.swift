//
//  UnitSelectionViewUITests.swift
//  Converter-SwiftUIVersionUITests
//
//  Created by Steven Hill on 19/11/2024.
//

import XCTest

final class UnitSelectionViewUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false 
    }

    override func tearDownWithError() throws {
    }

    func test_convertFromUnitSelectionView_existsAndDisplaysCorrectLabel() {
        let app = XCUIApplication()
        app.launch()
        
        let convertFromUnitSelectionView = app.staticTexts["Convert from unit selection view"]
        
        XCTAssertTrue(convertFromUnitSelectionView.exists, "The convert from unit selection view should exist.")
        XCTAssertEqual(convertFromUnitSelectionView.label, "Convert from", "The label should be 'Convert from'.")
    }
    
    func test_convertToUnitSelectionView_existsAndDisplaysCorrectLabel() {
        let app = XCUIApplication()
        app.launch()
        
        let convertToUnitSelectionView = app.staticTexts["Convert to unit selection view"]
 
        XCTAssertTrue(convertToUnitSelectionView.exists, "The convert to unit selection view should exist.")
        XCTAssertEqual(convertToUnitSelectionView.label, "Convert to", "The label should be 'Convert to'.")
    }
}
