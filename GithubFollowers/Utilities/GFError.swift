//
//  GFError.swift
//  GithubFollowers
//
//  Created by Jonathan Ricky Sandjaja on 25/06/24.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername        = "This username created an invalid request. Please try again."
    case unableToComplete       = "Unable to complete your request. Please check your internet connection"
    case invalidResponse        = "Invalid response from the server. Please try again."
    case invalidData            = "The data received from the server is invalid. Please try again."
    
    case unableToFavorite       = "There was an error favoriting this user. Please try again."
    case alreadyInFavorites     = "You've already favorited this user. You must REALLY like them!"
}
