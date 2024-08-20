//
//  GFButton.swift
//  GithubFollowers
//
//  Created by Jonathan Ricky Sandjaja on 10/06/24.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    convenience init(color: UIColor, title: String, systemImageName: String) {
        self.init(frame: .zero)
        set(color: color, title: title, systemImageName: systemImageName)
    }
    
    private func configure() {
        configuration               = .tinted()
        configuration?.cornerStyle  = .medium
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func set(color: UIColor, title: String, systemImageName: String) {
        configuration?.baseBackgroundColor  = color
        configuration?.baseForegroundColor  = color
        configuration?.title                = title
        
        configuration?.image                = UIImage(systemName: systemImageName)
        configuration?.imagePadding         = 6
        configuration?.imagePlacement       = .leading
    }

}
