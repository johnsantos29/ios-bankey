//
//  CurrencyFormatterTests.swift
//  BankeyUnitTests
//
//  Created by John Erick Santos on 6/5/2023.
//

import Foundation

import XCTest

@testable import Bankey

class Test: XCTestCase {
    var formatter: CurrencyFormatter!

    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }

    func testBreakDollarsIntoCents() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "929,466")
        XCTAssertEqual(result.1, "23")
    }

    func testDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(929466)
        let expected = "$929,466.00"
        XCTAssertEqual(result, expected)
    }

    func testZeroDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(0.00)
        let expected = "$0.00"
        XCTAssertEqual(result, expected)
    }
}
