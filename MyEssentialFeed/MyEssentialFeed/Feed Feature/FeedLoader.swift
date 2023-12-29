//
//  FeedLoader.swift
//  MyEssentialFeed
//
//  Created by Tiago Chaves on 11/12/23.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping ((LoadFeedResult) -> Void))
}
