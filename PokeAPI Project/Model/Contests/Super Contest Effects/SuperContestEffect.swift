//
//  SuperContestEffect.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

struct SuperContestEffect: Codable {
    let id: Int
    let appeal: Int
    let flavorTextEntries: [FlavorText]
    let moves: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case id
        case appeal
        case flavorTextEntries = "flavor_text_entries"
        case moves
    }
}
