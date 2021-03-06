//
//  AccountModelFactory.swift
//  DataTests
//
//  Created by Thiago Oliveira on 24/09/20.
//

import Foundation
import Domain


func makeAccountModel() -> AccountModel {
    AccountModel(id: "any_id", name: "any_name", email: "any_email@mail.com", password: "any_password")
}

func makeAddAccountModel() -> AddAccountModel {
    AddAccountModel(name: "any_name", email: "any_email@mail.com", password: "any_password", passwordConfirmation: "any_password")
}
