//
//  GFAvatarImageView.swift
//  GithubFollowers
//
//  Created by Jonathan Ricky Sandjaja on 12/06/24.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    let placeholderImage = UIImage(named: "avatar-placeholder")

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }

}
