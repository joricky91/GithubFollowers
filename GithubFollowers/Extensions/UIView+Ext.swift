//
//  UIView+Ext.swift
//  GithubFollowers
//
//  Created by Jonathan Ricky Sandjaja on 01/08/24.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
    
}
