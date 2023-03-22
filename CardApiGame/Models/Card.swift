//
//  Card.swift
//  CardApiGame
//
//  Created by Jaswal, Eesa (SPH) on 22/03/2023.
//

import Foundation

class Card: Codable {
    var code: String
    var image: String
    var value: String
    var suit: String
    
    private enum CodingKeys: String, CodingKey {
        case code
        case image
        case value
        case suit
    }
}
