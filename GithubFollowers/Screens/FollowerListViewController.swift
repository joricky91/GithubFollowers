//
//  FollowerListViewController.swift
//  GithubFollowers
//
//  Created by Jonathan Ricky Sandjaja on 10/06/24.
//

import UIKit

class FollowerListViewController: UIViewController {
    
    var username: String = ""
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { [weak self] followers, errorMessage in
            guard let self, let followers else {
                self?.presentGFAlertOnMainThread(title: "Bad Stuff Happened", message: errorMessage?.rawValue ?? "", buttonTitle: "Ok")
                return
            }
            
            print("Follower count = \(followers.count)")
            print("Followers: \(followers)")
        }
    }

}
