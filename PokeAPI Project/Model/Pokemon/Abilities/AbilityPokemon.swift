//
//  AbilityPokemon.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct AbilityPokemon: Codable , Hashable {
    let isHidden: Bool
    let slot: Int
    let pokemon: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case isHidden = "is_hidden"
        case slot
        case pokemon
    }
}
