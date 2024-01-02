//
//  SharedTestHelpers.swift
//  MyEssentialFeedTests
//
//  Created by Tiago Chaves on 01/01/24.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
