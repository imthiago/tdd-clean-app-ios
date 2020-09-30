//
//  SignUpMapper.swift
//  Presentation
//
//  Created by Thiago Oliveira on 29/09/20.
//

import Foundation
import Domain

public final class SignUpMapper {
    static func toAddAccountModel(viewModel: SignUpViewModel) -> AddAccountModel {
        AddAccountModel(name: viewModel.name!, email: viewModel.email!, password: viewModel.password!, passwordConfirmation: viewModel.passwordConfirmation!)
    }
}
