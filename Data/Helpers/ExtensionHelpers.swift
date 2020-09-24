//
//  ExtensionHelpers.swift
//  Data
//
//  Created by Thiago Oliveira on 24/09/20.
//

import Foundation


public extension Data {
    func toModel<T: Decodable>() -> T? {
        try? JSONDecoder().decode(T.self, from: self)
    }
}
