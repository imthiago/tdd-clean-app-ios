//
//  TestFactories.swift
//  PresentationTests
//
//  Created by Thiago Oliveira on 30/09/20.
//

import Foundation
import Presentation


func makeSignUpViewModel(name: String? = "any_name", email: String? = "any_email@mail.com", password: String? = "any_password", passwordConfirmation: String? = "any_password") -> SignUpViewModel {
    SignUpViewModel(name: name, email: email, password: password, passwordConfirmation: passwordConfirmation)
}

func makeAlertViewModel(fieldName: String) -> AlertViewModel {
    AlertViewModel(title: "Falha na validação", message: "O campo \(fieldName) é obrigatório")
}

func makeErrorAlertViewModel(message: String) -> AlertViewModel {
    AlertViewModel(title: "Erro", message: message)
}

func makeSuccessAlertViewModel(message: String) -> AlertViewModel {
    AlertViewModel(title: "Sucesso", message: message)
}
