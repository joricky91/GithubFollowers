//
//  GFEmptyStateView.swift
//  GithubFollowers
//
//  Created by Jonathan Ricky Sandjaja on 21/06/24.
//

import UIKit

class GFEmptyStateView: UIView {
    
    let messageLabel    = GFTitleLabel(textAlignment: .center, fontSize: 28)
    let logoImageView   = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    convenience init(message: String) {
        self.init(frame: .zero)
        
        messageLabel.text = message
    }
    
    private func configure() {
        addSubviews(messageLabel, logoImageView)
        
        messageLabel.numberOfLines  = 3
        messageLabel.textColor      = .secondaryLabel
        
        logoImageView.image = Images.emptyStateLogo
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let labelCenterY: CGFloat       = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8Zoomed ? -90 : -150
        let logoBottomConstant: CGFloat = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8Zoomed ? 100 : 40
        
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: labelCenterY),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200),
            
            logoImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageView.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 170),
            logoImageView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: logoBottomConstant)
        ])
    }

}
