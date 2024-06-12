//
//  FollowerListViewController.swift
//  GithubFollowers
//
//  Created by Jonathan Ricky Sandjaja on 10/06/24.
//

import UIKit

class FollowerListViewController: UIViewController {
    
    var username: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }

}
