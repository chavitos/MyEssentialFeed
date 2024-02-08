//
//  UITableView+Dequeueing.swift
//  MyEssentialFeediOS
//
//  Created by Tiago Chaves on 08/02/24.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
