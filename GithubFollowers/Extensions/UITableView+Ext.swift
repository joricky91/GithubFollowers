//
//  UITableView+Ext.swift
//  GithubFollowers
//
//  Created by Jonathan Ricky Sandjaja on 09/08/24.
//

import UIKit

extension UITableView {
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
}
