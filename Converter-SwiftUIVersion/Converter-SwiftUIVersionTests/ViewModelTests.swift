//
//  ViewModelTests.swift
//  Converter-SwiftUIVersionTests
//
//  Created by Steven Hill on 30/09/2024.
//

import XCTest
@testable import Converter_SwiftUIVersion

final class ViewModelTests: XCTestCase {

    var sut: ViewModel!
    
    override func setUp() {
        sut = ViewModel()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func test_viewModelDefaultValues_areSetCorrectlyAtInitialisation() {
        XCTAssertEqual(sut.selectedUnitTypeIndex, 0, "Should be set to 0.")
        XCTAssertEqual(sut.selectedFromUnitIndex, 0, "Should be set to 0.")
        XCTAssertEqual(sut.selectedToUnitIndex, 1, "Should be set to 1.")
        XCTAssertEqual(sut.inputAmount, "", "Should be set to an empty string.")
        XCTAssertEqual(sut.result, "", "Should be set to an empty string.")
    }
    
    func test_unitSelectionResetFunction_resetsUnitIndexesToInitialValues() {
        sut.selectedFromUnitIndex = 2
        sut.selectedToUnitIndex = 2
        
        sut.resetUnitSelection()
        
        XCTAssertEqual(sut.selectedFromUnitIndex, 0, "Should be reset to 0.")
        XCTAssertEqual(sut.selectedToUnitIndex, 1, "Should be reset to 1.")
    }
    
    func test_inputAmount_isAnEmptyString_castToDefaultDoubleValueinUpdateResultFunction() {
        let input = Double(sut.inputAmount) ?? 0.0
        
        sut.updateResult()
        
        XCTAssertEqual(input, 0.0, "Should be set to 0.0.")
    }
}
