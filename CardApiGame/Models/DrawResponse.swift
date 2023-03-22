//
//  DrawResponse.swift
//  CardApiGame
//
//  Created by Jaswal, Eesa (SPH) on 22/03/2023.
//

import Foundation

struct DrawResponse: Codable {
    var success: Bool
    var deck_id: String
    var cards: [Card]
    var remaining: Int
    
}
