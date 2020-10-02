//
//  SignUpIntegrationTests.swift
//  MainTests
//
//  Created by Thiago Oliveira on 01/10/20.
//

import XCTest
import Main

class SignUpIntegrationTests: XCTestCase {
    func test_ui_presentation_integration() {
        debugPrint("=================================")
        debugPrint(Environments.variable(.apiBaseUrl))
        debugPrint("=================================")
        let sut = SignUpComposer.composeControllerWith(addAccount: AddAccountSpy())
        checkMemoryLeak(for: sut)
    }
}
