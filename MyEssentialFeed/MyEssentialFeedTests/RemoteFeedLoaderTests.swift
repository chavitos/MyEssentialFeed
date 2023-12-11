//
//  RemoteFeedLoaderTests.swift
//  MyEssentialFeedTests
//
//  Created by Tiago Chaves on 11/12/23.
//

import XCTest

class RemoteFeedLoader {
    let client: HTTPClient
    
    init(client: HTTPClient) {
        self.client = client
    }
    
    func load() {
        client.get(from: URL(string: "https://a-url.com")!)
    }
}

protocol HTTPClient {
    func get(from url: URL)
}

final class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClientSpy()
        _ = RemoteFeedLoader(client: client)
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL() {
        let client = HTTPClientSpy()
        let sut = RemoteFeedLoader(client: client)
        
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
    }
    
    //MARK: - Helpers
    
    private func makeSUT() -> RemoteFeedLoader? {
        return nil
    }
    
    private class HTTPClientSpy: HTTPClient {
        var requestedURL: URL?
        func get(from url: URL) {
            requestedURL  = url
        }
    }
}
