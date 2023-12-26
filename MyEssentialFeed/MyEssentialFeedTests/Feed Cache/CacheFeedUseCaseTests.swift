//
//  CacheFeedUseCaseTests.swift
//  MyEssentialFeedTests
//
//  Created by Tiago Chaves on 26/12/23.
//

import XCTest

class FeedStore {
    var deleteCachedFeedCallCount = 0
}

class LocalFeedLoader {
    init(store: FeedStore) {
        
    }
}

final class CacheFeedUseCaseTests: XCTestCase {

    func test() {
        let store = FeedStore()
        _ = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }

}
