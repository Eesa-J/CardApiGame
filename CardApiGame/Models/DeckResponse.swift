//
//  DeckResponse.swift
//  CardApiGame
//
//  Created by Jaswal, Eesa (SPH) on 22/03/2023.
//

import Foundation

struct DeckResponse: Codable {
    var success: Bool
    var deck_id: String
    var shuffled: Bool
    var remaining: Int
    
    private enum CodingKeys: String, CodingKey {
        case success
        case deck_id
        case shuffled
        case remaining
    }
}
