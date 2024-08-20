//
//  FollowerCell.swift
//  GithubFollowers
//
//  Created by Jonathan Ricky Sandjaja on 12/06/24.
//

import UIKit
import SwiftUI

class FollowerCell: UICollectionViewCell {
    
    static let reuseID  = "FollowerCell"
    
//    let avatarImageView = GFAvatarImageView(frame: .zero)
//    let usernameLabel   = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func set(follower: Follower) {
//        if #available(iOS 16.0, *) {
            contentConfiguration = UIHostingConfiguration {
                FollowerView(follower: follower)
            }
//        } else {
//            usernameLabel.text = follower.login
//            avatarImageView.downloadImage(fromURL: follower.avatarUrl)
//        }
    }
    
//    private func configure() {
//        addSubviews(avatarImageView, usernameLabel)
//        
//        let padding: CGFloat = 8
//        
//        NSLayoutConstraint.activate([
//            avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
//            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
//            avatarImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
//            avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
//            
//            usernameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 12),
//            usernameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
//            usernameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
//            usernameLabel.heightAnchor.constraint(equalToConstant: 20)
//        ])
//    }
    
}
