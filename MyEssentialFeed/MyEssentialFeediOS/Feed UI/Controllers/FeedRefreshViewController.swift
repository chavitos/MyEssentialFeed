//
//  FeedRefreshViewController.swift
//  MyEssentialFeediOS
//
//  Created by Tiago Chaves on 15/01/24.
//

import UIKit

public final class FeedRefreshViewController: NSObject {
    public lazy var view = binded(UIRefreshControl())
    
    private let viewModel: FeedViewModel
    
    init(viewModel: FeedViewModel) {
        self.viewModel = viewModel
    }
    
    @objc func refresh() {
        viewModel.loadFeed()
    }
    
    private func binded(_ view: UIRefreshControl) -> UIRefreshControl {
        viewModel.onLoadingStateChange = { [weak self] isLoading in
            isLoading ? self?.view.beginRefreshing() : self?.view.endRefreshing()
        }
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }
}