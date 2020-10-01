//
//  ValidationTests.swift
//  ValidationTests
//
//  Created by Thiago Oliveira on 01/10/20.
//

import XCTest
import Presentation
import Validation

class EmailValidatorAdapterTests: XCTestCase {
    func test_invalid_emails() {
        let sut = makeSut()
        XCTAssertFalse(sut.isValid(email: "rr"))
        XCTAssertFalse(sut.isValid(email: "rr@"))
        XCTAssertFalse(sut.isValid(email: "rr@rr"))
        XCTAssertFalse(sut.isValid(email: "rr@rr."))
        XCTAssertFalse(sut.isValid(email: "@rr.com"))
    }
    func test_valid_emails() {
        let sut = makeSut()
        XCTAssertTrue(sut.isValid(email: "mush@vista.aero"))
        XCTAssertTrue(sut.isValid(email: "thiago@outlook.com.br"))
        XCTAssertTrue(sut.isValid(email: "thiago@gmail.com"))
        XCTAssertTrue(sut.isValid(email: "thiago@yahoo.com.br"))
    }
}

extension EmailValidatorAdapterTests {
    func makeSut() -> EmailValidatorAdapter {
        return EmailValidatorAdapter()
    }
}
