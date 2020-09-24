//
//  AccountModelFactory.swift
//  DataTests
//
//  Created by Thiago Oliveira on 24/09/20.
//

import Foundation
import Domain

func makeAddAccountModel() -> AddAccountModel {
    AddAccountModel(name: "any_name", email: "any_email", password: "any_password", passwordConfirmation: "any_password")
}
