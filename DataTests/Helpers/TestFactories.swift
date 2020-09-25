//
//  TestFactories.swift
//  DataTests
//
//  Created by Thiago Oliveira on 24/09/20.
//

import Foundation

func makeInvalidData() -> Data {
    Data("invalid_data".utf8)
}

func makeUrl() -> URL {
    URL(string: "http://any-url.com")!
}

func makeValidData() -> Data {
    Data("{\"name\":\"Thiago Oliveira\"}".utf8)
}

func makeError() -> Error {
    NSError(domain: "any_domain", code: 0)
}
