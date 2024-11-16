//
//  TitleViewTests.swift
//  Converter-SwiftUIVersionTests
//
//  Created by Steven Hill on 16/11/2024.
//

import XCTest
@testable import Converter_SwiftUIVersion

final class TitleViewTests: XCTestCase {
    
    var sut: TitleView!

    override func setUpWithError() throws {
        sut = TitleView()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func test_title_isInitializedCorrectly() {
        XCTAssertNotNil(sut, "TitleView should not be nil.")
    }
}
