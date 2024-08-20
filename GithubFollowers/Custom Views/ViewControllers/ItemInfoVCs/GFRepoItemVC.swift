//
//  GFRepoItemVC.swift
//  GithubFollowers
//
//  Created by Jonathan Ricky Sandjaja on 28/06/24.
//

import UIKit

protocol GFRepoItemViewControllerDelegate: AnyObject {
    func didTapGithubProfile(for user: User)
}

class GFRepoItemVC: GFItemInfoViewController {
    
    weak var delegate: GFRepoItemViewControllerDelegate!
    
    init(user: User, delegate: GFRepoItemViewControllerDelegate) {
        super.init(user: user)
        
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        
        actionButton.set(color: .systemPurple, title: "Github Profile", systemImageName: "person")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGithubProfile(for: user)
    }
    
}
