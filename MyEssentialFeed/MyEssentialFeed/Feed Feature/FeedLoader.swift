//
//  FeedLoader.swift
//  MyEssentialFeed
//
//  Created by Tiago Chaves on 11/12/23.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping ((Result) -> Void))
}
