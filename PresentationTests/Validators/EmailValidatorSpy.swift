//
//  EmailValidatorSpy.swift
//  PresentationTests
//
//  Created by Thiago Oliveira on 29/09/20.
//

import Foundation
import Presentation

class EmailValidatorSpy: EmailValidator {
    var isValid = true
    var email: String?
    
    func isValid(email: String) -> Bool {
        self.email = email
        return isValid
    }
}
