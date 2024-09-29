//
//  ConverterConversionsTests.swift
//  Converter-SwiftUIVersionTests
//
//  Created by Steven Hill on 28/09/2024.
//

import XCTest
@testable import Converter_SwiftUIVersion

final class ConverterConversionsTests: XCTestCase {
    
    var sut: ConverterConversions!
    
    override func setUp() {
        sut = ConverterConversions()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func test_conversionsArray_containsFiveUnitTypes() {
        XCTAssertEqual(sut.conversions.count, 5, "There should be 5 unit types.")
    }
    
    func test_conversionsUnitTypes_haveCorrectTitles() {
        XCTAssertEqual(sut.conversions[0].title, "Distance", "The first conversion should be 'Distance'.")
        XCTAssertEqual(sut.conversions[1].title, "Duration", "The second conversion should be 'Duration'.")
        XCTAssertEqual(sut.conversions[2].title, "Mass", "The third conversion should be 'Mass'.")
        XCTAssertEqual(sut.conversions[3].title, "Temperature", "The fourth conversion should be 'Temperature'.")
        XCTAssertEqual(sut.conversions[4].title, "Volume", "The fifth conversion should be 'Volume'.")
    }
    
    func test_conversionsUnitTypes_haveCorrectNumberOfUnits() {
        XCTAssertEqual(sut.conversions[0].units.count, 11, "There should be 11 units for the distance conversion.")
        XCTAssertEqual(sut.conversions[1].units.count, 3, "There should be 3 units for the duration conversion.")
        XCTAssertEqual(sut.conversions[2].units.count, 6, "There should be 6 units for the mass conversion.")
        XCTAssertEqual(sut.conversions[3].units.count, 3, "There should be 3 units for the temperature conversion.")
        XCTAssertEqual(sut.conversions[4].units.count, 11, "There should be 11 units for the volume conversion.")
    }
}
