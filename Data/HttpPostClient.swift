//
//  HttpPostClient.swift
//  Data
//
//  Created by Thiago Oliveira on 23/09/20.
//

import Foundation

public protocol HttpPostClient {
    func post(to url: URL, with data: Data?)
}
