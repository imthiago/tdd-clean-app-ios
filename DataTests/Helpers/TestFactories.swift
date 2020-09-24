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
