//
//  HTTPClient.swift
//  MyEssentialFeed
//
//  Created by Tiago Chaves on 12/12/23.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
