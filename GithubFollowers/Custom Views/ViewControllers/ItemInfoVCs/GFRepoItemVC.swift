//
//  GFRepoItemVC.swift
//  GithubFollowers
//
//  Created by Jonathan Ricky Sandjaja on 28/06/24.
//

import UIKit

class GFRepoItemVC: GFItemInfoViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        
        actionButton.set(backgroundColor: .systemPurple, title: "Github Profile")
    }
    
}
