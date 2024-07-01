//
//  FavoriteViewController.swift
//  GithubFollowers
//
//  Created by Jonathan Ricky Sandjaja on 10/06/24.
//

import UIKit

class FavoriteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemTeal
        
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let failure):
                break
            }
        }
    }

}
