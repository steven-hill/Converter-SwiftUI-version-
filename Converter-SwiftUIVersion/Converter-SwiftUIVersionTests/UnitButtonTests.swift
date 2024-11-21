//
//  UnitButtonTests.swift
//  Converter-SwiftUIVersionTests
//
//  Created by Steven Hill on 21/11/2024.
//

import XCTest
@testable import Converter_SwiftUIVersion

final class UnitButtonTests: XCTestCase {
    
    private var sut: UnitButton!

    override func setUp() {
        sut = UnitButton(unit: UnitLength.meters)
    }

    override func tearDown() {
        sut = nil
    }
    
    func test_unitButton_isInitializedCorrectly() {
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut.unit, UnitLength.meters)
    }

    func test_unitButton_displaysCorrectlyWhenUnitisChanged() {
        XCTAssertEqual(sut.formatUnit(UnitTemperature.celsius), "degrees Celsius")
    }

    func test_formatter_usesLongStyle() {
        XCTAssertEqual(sut.formatUnit(UnitLength.centimeters), "centimetres", "In long unit style, the unit should be displayed as 'centimetres'; short and medium unit styles both use 'cm'.")
    }
}
