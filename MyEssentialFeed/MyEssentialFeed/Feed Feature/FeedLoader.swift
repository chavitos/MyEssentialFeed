//
//  FeedLoader.swift
//  MyEssentialFeed
//
//  Created by Tiago Chaves on 11/12/23.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping ((LoadFeedResult) -> Void))
}
