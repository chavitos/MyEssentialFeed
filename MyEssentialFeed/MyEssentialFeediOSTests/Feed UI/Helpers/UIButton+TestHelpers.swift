//
//  UIButton+TestHelpers.swift
//  MyEssentialFeediOSTests
//
//  Created by Tiago Chaves on 15/01/24.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
