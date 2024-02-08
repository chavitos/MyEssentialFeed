//
//  FeedImageCell.swift
//  MyEssentialFeediOS
//
//  Created by Tiago Chaves on 11/01/24.
//

import UIKit

public final class FeedImageCell: UITableViewCell {
    @IBOutlet private(set) weak var locationContainer: UIView!
    @IBOutlet private(set) weak var locationLabel: UILabel!
    @IBOutlet private(set) weak var descriptionLabel: UILabel!
    @IBOutlet private(set) weak var feedImageContainer: UIView!
    @IBOutlet private(set) weak var feedImageView: UIImageView!
    @IBOutlet private(set) weak var feedImageRetryButton: UIButton!
    
    var onRetry: (() -> Void)?
    var onReuse: (() -> Void)?
    
    @IBAction private func retryButtonTapped() {
        onRetry?()
    }
    
    public override func prepareForReuse() {
        super.prepareForReuse()
        onReuse?()
    }
}
