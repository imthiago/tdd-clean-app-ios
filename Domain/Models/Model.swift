//
//  Model.swift
//  Domain
//
//  Created by Thiago Oliveira on 23/09/20.
//

import Foundation

public protocol Model: Codable, Equatable {
    
}

public extension Model {
    func toData() -> Data? {
        return try? JSONEncoder().encode(self)
    }
}
