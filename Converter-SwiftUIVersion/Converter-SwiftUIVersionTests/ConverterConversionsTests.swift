//
//  ConverterConversionsTests.swift
//  Converter-SwiftUIVersionTests
//
//  Created by Steven Hill on 28/09/2024.
//

import XCTest
@testable import Converter_SwiftUIVersion

final class ConverterConversionsTests: XCTestCase {
    let conversions: [(title: String, units: [Dimension])] = [
        ("Distance", [UnitLength.astronomicalUnits, UnitLength.centimeters, UnitLength.feet, UnitLength.inches, UnitLength.kilometers, UnitLength.lightyears, UnitLength.meters, UnitLength.miles, UnitLength.millimeters, UnitLength.parsecs, UnitLength.yards]),
        ("Duration", [UnitDuration.hours, UnitDuration.minutes, UnitDuration.seconds]),
        ("Mass", [UnitMass.grams, UnitMass.kilograms, UnitMass.ounces, UnitMass.pounds, UnitMass.stones, UnitMass.metricTons]),
        ("Temperature", [UnitTemperature.celsius, UnitTemperature.fahrenheit, UnitTemperature.kelvin]),
        ("Volume", [UnitVolume.bushels, UnitVolume.cubicFeet, UnitVolume.cups, UnitVolume.fluidOunces, UnitVolume.gallons, UnitVolume.liters, UnitVolume.milliliters, UnitVolume.pints, UnitVolume.quarts, UnitVolume.tablespoons, UnitVolume.teaspoons]),
    ]
    
    func test_conversionsArray_containsFiveUnitTypes() {
        XCTAssertEqual(conversions.count, 5, "There should be 5 unit types.")
    }
    
    func test_conversionsUnitTypes_haveCorrectTitles() {
        XCTAssertEqual(conversions[0].title, "Distance", "The first conversion should be 'Distance'.")
        XCTAssertEqual(conversions[1].title, "Duration", "The second conversion should be 'Duration'.")
        XCTAssertEqual(conversions[2].title, "Mass", "The third conversion should be 'Mass'.")
        XCTAssertEqual(conversions[3].title, "Temperature", "The fourth conversion should be 'Temperature'.")
        XCTAssertEqual(conversions[4].title, "Volume", "The fifth conversion should be 'Volume'.")
    }
    
    func test_conversionsUnitTypes_haveCorrectNumberOfUnits() {
        XCTAssertEqual(conversions[0].units.count, 11, "There should be 11 units for the distance conversion.")
        XCTAssertEqual(conversions[1].units.count, 3, "There should be 3 units for the duration conversion.")
        XCTAssertEqual(conversions[2].units.count, 6, "There should be 6 units for the mass conversion.")
        XCTAssertEqual(conversions[3].units.count, 3, "There should be 3 units for the temperature conversion.")
        XCTAssertEqual(conversions[4].units.count, 11, "There should be 11 units for the volume conversion.")
    }
}
