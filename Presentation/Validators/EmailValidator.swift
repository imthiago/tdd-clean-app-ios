//
//  EmailValidator.swift
//  Presentation
//
//  Created by Thiago Oliveira on 25/09/20.
//

import Foundation

public protocol EmailValidator {
    func isValid(email: String) -> Bool
}
