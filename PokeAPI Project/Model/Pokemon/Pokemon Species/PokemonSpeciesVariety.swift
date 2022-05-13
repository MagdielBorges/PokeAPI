//
//  PokemonSpeciesVariety.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct PokemonSpeciesVariety: Codable, Hashable {
    let isDefault: Bool
    let pokemon: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case isDefault = "is_default"
        case pokemon
    }
}
