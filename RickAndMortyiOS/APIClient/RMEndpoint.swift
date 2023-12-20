//
//  RMEndpoint.swift
//  RickAndMortyiOS
//
//  Created by Abbar on 20/12/2023.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character // it will spit it out into a string "character"
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
