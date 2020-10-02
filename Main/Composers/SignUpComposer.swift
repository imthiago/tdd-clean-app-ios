//
//  SignUpComposer.swift
//  Main
//
//  Created by Thiago Oliveira on 01/10/20.
//

import Foundation
import Domain
import UI

public final class SignUpComposer {
    static func composeControllerWith(addAccount: AddAccount) -> SignUpViewController {
        return ControllerFactory.makeSignUp(addAccount: addAccount)
    }
}

