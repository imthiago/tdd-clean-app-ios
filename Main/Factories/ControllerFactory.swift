//
//  SignUpFactory.swift
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

class ControllerFactory {
    static func makeSignUp(addAccount: AddAccount) -> SignUpViewController {
        let controller = SignUpViewController.instanciate()
        let emailValidatorAdapter = EmailValidatorAdapter()
        let presenter = SignUpPresenter(alertView: WearkVarProxy(controller), emailValidator: emailValidatorAdapter, addAccount: addAccount, loadingView: WearkVarProxy(controller))
        controller.signUp = presenter.signUp
        return controller
    }
}

class WearkVarProxy<T: AnyObject> {
    private weak var instance: T?
    
    init(_ instance: T) {
        self.instance = instance
    }
}

extension WearkVarProxy: AlertView where T: AlertView {
    func showMessage(viewModel: AlertViewModel) {
        instance?.showMessage(viewModel: viewModel)
    }
}

extension WearkVarProxy: LoadingView where T: LoadingView {
    func display(viewModel: LoadingViewModel) {
        instance?.display(viewModel: viewModel)
    }
}
