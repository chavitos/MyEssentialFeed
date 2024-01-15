//
//  UIControl+TestHelpers.swift
//  MyEssentialFeediOSTests
//
//  Created by Tiago Chaves on 15/01/24.
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
