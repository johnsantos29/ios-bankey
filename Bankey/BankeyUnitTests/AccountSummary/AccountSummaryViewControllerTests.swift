//
//  AccountSummaryViewControllerTests.swift
//  BankeyUnitTests
//
//  Created by John Erick Santos on 9/5/2023.
//

import Foundation
import XCTest

@testable import Bankey

class AccountSummaryViewControllerTests: XCTestCase {
    var vc: AccountSummaryViewController!

    override func setUp() {
        super.setUp()
        vc = AccountSummaryViewController()
        // vc.loadViewIfNeeded()
    }

    func testTitleAndMessageForServerError() throws {
        let titleAndMessage = vc.titleAndMessageForTesting(for: .serverError)
        XCTAssertEqual("Server Error", titleAndMessage.0)
        XCTAssertEqual("We could not process your request. Please try again.", titleAndMessage.1)
    }
}
