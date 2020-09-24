//
//  InfraTests.swift
//  InfraTests
//
//  Created by Thiago Oliveira on 24/09/20.
//

import XCTest
import Alamofire

public class AlamofireAdapter {
    private let session: Session
    
    init(session: Session = .default) {
        self.session = session
    }
    
    func post(to url: URL) {
        session.request(url).resume()
    }
}

class AlamofireAdapterTests: XCTestCase {
    func test_() {
        let url = makeUrl()
        let configuration = URLSessionConfiguration.default
        configuration.protocolClasses = [UrlProtocolStub.self]
        let session = Session(configuration: configuration)
        let sut = AlamofireAdapter(session: session)
        sut.post(to: url)
        let exp = expectation(description: "waiting")
        UrlProtocolStub.observeRequest { request in
            XCTAssertEqual(url, request.url)
            exp.fulfill()
        }
        wait(for: [exp], timeout: 1)
    }
}

class UrlProtocolStub: URLProtocol {
    static var emit: ((URLRequest) -> Void)?
    
    static func observeRequest(completion: @escaping (URLRequest) -> Void) {
        UrlProtocolStub.emit = completion
    }
    
    override class func canInit(with request: URLRequest) -> Bool {
        true
    }
    
    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        request
    }
    
    override func startLoading() {
        UrlProtocolStub.emit?(request)
    }
    
    override func stopLoading() {}
}
