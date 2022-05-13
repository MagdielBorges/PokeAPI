//
//  ContestEffect.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

struct ContestEffect: Codable {
    let id: Int
    let appeal: Int
    let jam: Int
    let effectEntries: [Effect]
    let flavorTextEntries: [FlavorText]
    
    enum CodingKeys: String, CodingKey {
        case id
        case appeal
        case jam
        case effectEntries = "effect_entries"
        case flavorTextEntries = "flavor_text_entries"
    }
}
