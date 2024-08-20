//
//  Date + Ext.swift
//  GithubFollowers
//
//  Created by Jonathan Ricky Sandjaja on 28/06/24.
//

import Foundation

extension Date {
    
//    func convertToMonthYearFormat() -> String {
//        let dateFormatter           = DateFormatter()
//        dateFormatter.dateFormat    = "MMM yyyy"
//        
//        return dateFormatter.string(from: self)
//    }
    
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year())
    }
    
}
