//
//  UseCasesIntegrationTests.swift
//  UseCasesIntegrationTests
//
//  Created by Thiago Oliveira on 25/09/20.
//

import XCTest
import Data
import Infra
import Domain

class AddAccountIntegrationTests: XCTestCase {
    func test_add_account_successfully() {
        let alamofireAdapter = AlamofireAdapter()
        let url = URL(string: "https://clean-node-api.herokuapp.com/api/signup")!
        let sut = RemoteAddAccount(url: url, httpClient: alamofireAdapter)
        let addAccountModel = AddAccountModel(name: "Thiago Oliveira", email: "thiago@outlook.com.br", password: "Senha@123", passwordConfirmation: "Senha@123")
        let exp = expectation(description: "waiting")
        sut.add(addAccountModel: addAccountModel) { result in
            switch result {
            case .failure:
                XCTFail("Expected success got \(result) instead")
            case .success(let account):
                XCTAssertNotNil(account.id)
                XCTAssertEqual(account.name, addAccountModel.name)
                XCTAssertEqual(account.email, addAccountModel.email)
            }
            exp.fulfill()
        }
        wait(for: [exp], timeout: 5)
    }
    
    func test_add_account_failure() {
        let alamofireAdapter = AlamofireAdapter()
        let url = URL(string: "https://clean-node-api.herokuapp.com/api/signup")!
        let sut = RemoteAddAccount(url: url, httpClient: alamofireAdapter)
        let addAccountModel = AddAccountModel(name: "Thiago Oliveira", email: "thiago@outlook.com.br", password: "Senha@123", passwordConfirmation: "Senha@1234")
        let exp = expectation(description: "waiting")
        sut.add(addAccountModel: addAccountModel) { result in
            switch result {
            case .failure(let error):
                XCTAssertEqual(error, .unexpected)
            case .success:
                XCTFail("Expected success got \(result) instead")
            }
            exp.fulfill()
        }
        wait(for: [exp], timeout: 5)
    }
}
