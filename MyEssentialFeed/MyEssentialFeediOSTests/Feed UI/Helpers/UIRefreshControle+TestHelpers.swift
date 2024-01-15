//
//  UIRefreshControle+TestHelpers.swift
//  MyEssentialFeediOSTests
//
//  Created by Tiago Chaves on 15/01/24.
//

import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        simulate(event: .valueChanged)
    }
}
