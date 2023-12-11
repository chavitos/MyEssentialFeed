//
//  FeedLoader.swift
//  MyEssentialFeed
//
//  Created by Tiago Chaves on 11/12/23.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping ((LoadFeedResult) -> Void))
}
