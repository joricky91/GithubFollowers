//
//  GFSecondaryTitleLabel.swift
//  GithubFollowers
//
//  Created by Jonathan Ricky Sandjaja on 25/06/24.
//

import UIKit

class GFSecondaryTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    convenience init(fontSize: CGFloat) {
        self.init(frame: .zero)
        
        font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
    }
    
    private func configure() {
        textColor                                 = .secondaryLabel
        adjustsFontSizeToFitWidth                 = true
        minimumScaleFactor                        = 0.90
        lineBreakMode                             = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }

}
