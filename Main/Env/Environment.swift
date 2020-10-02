//
//  Environment.swift
//  Main
//
//  Created by Thiago Oliveira on 01/10/20.
//

import Foundation

public final class Environments {
    
    public enum EnvironmentVariables: String {
        case apiBaseUrl = "API_BASE_URL"
    }

    public static func variable(_ key: EnvironmentVariables) -> String {
        return Bundle.main.infoDictionary![key.rawValue] as! String
    }
}
