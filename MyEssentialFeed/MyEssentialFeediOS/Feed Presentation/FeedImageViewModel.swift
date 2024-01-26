//
//  FeedImageViewModel.swift
//  MyEssentialFeediOS
//
//  Created by Tiago Chaves on 15/01/24.
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
