//
//  GFDataLoadingViewController.swift
//  GithubFollowers
//
//  Created by Jonathan Ricky Sandjaja on 25/07/24.
//

import UIKit

class GFDataLoadingViewController: UIViewController {
    
    var containerView: UIView!

    func showLoadingView() {
        containerView = UIView(frame: view.bounds)
        view.addSubview(containerView)
        
        containerView.backgroundColor = .systemBackground
        containerView.alpha           = 0
        
        UIView.animate(withDuration: 0.25) {
            self.containerView.alpha = 0.8
        }
        
        let activity = UIActivityIndicatorView(style: .large)
        containerView.addSubview(activity)
        
        activity.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            activity.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            activity.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
        ])
        
        activity.startAnimating()
    }
    
    func dismissLoadingView() {
        DispatchQueue.main.async {
            self.containerView.removeFromSuperview()
            self.containerView = nil
        }
    }
    
    func showEmptyStateView(with message: String, in view: UIView) {
        let emptyState = GFEmptyStateView(message: message)
        emptyState.frame = view.bounds
        view.addSubview(emptyState)
    }

}
