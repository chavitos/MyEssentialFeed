//
//  UIRefreshControle+TestHelpers.swift
//  MyEssentialFeediOSTests
//
//  Created by Tiago Chaves on 15/01/24.
//

import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .valueChanged)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
