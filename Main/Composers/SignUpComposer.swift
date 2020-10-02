//
//  SignUpComposer.swift
//  Main
//
//  Created by Thiago Oliveira on 01/10/20.
//

import Foundation
import UI
import Presentation
import Validation
import Data
import Infra
import Domain

public final class SignUpComposer {
    public static func composeControllerWith(addAccount: AddAccount) -> SignUpViewController {
        let controller = SignUpViewController.instanciate()
        let emailValidatorAdapter = EmailValidatorAdapter()
        let presenter = SignUpPresenter(alertView: WearkVarProxy(controller), emailValidator: emailValidatorAdapter, addAccount: addAccount, loadingView: WearkVarProxy(controller))
        controller.signUp = presenter.signUp
        return controller
    }
}

