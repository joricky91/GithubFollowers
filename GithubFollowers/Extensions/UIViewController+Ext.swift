//
//  UIViewController+Ext.swift
//  GithubFollowers
//
//  Created by Jonathan Ricky Sandjaja on 12/06/24.
//

import UIKit
import SafariServices

extension UIViewController {
    
    func presentGFAlert(title: String, message: String, buttonTitle: String) {
        let alertVC                     = GFAlertViewController(alertTitle: title, message: message, buttonTitle: buttonTitle)
        alertVC.modalPresentationStyle  = .overFullScreen
        alertVC.modalTransitionStyle    = .crossDissolve
        
        present(alertVC, animated: true)
    }
    
    func presentDefaultError() {
        let alertVC                     = GFAlertViewController(alertTitle: "Something went wrong",
                                                                message: "We were unable to complete your task at this time. Please try again.",
                                                                buttonTitle: "Ok")
        alertVC.modalPresentationStyle  = .overFullScreen
        alertVC.modalTransitionStyle    = .crossDissolve
        
        present(alertVC, animated: true)
    }
    
    func presentSafariViewController(with url: URL) {
        let safariVC                        = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor  = .systemGreen
        present(safariVC, animated: true)
    }
    
}
