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
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        
        configure()
    }
    
    private func configure() {
        layer.cornerRadius          = 10
        
        setTitleColor(.white, for: .normal)
        titleLabel?.font            = UIFont.preferredFont(forTextStyle: .headline)
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func set(backgroundColor: UIColor, title: String) {
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
    }

}
