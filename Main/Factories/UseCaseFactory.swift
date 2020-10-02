//
//  UseCaseFactory.swift
//  Main
//
//  Created by Thiago Oliveira on 01/10/20.
//

import Foundation
import Data
import Infra
import Domain

final class UseCaseFactory {
    private static let httpClient = AlamofireAdapter()
    private static let apiBaseUrl = Environments.variable(.apiBaseUrl)
    
    private static func makeUrl(path: String) -> URL {
        return URL(string: "\(apiBaseUrl)/\(path)")!
    }
    
    static func makeRemoteAddAccount() -> AddAccount {
        return RemoteAddAccount(url: makeUrl(path: "signup"), httpClient: httpClient)
    }
}
