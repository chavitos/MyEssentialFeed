//
//  RemoteFeedItem.swift
//  MyEssentialFeed
//
//  Created by Tiago Chaves on 28/12/23.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
