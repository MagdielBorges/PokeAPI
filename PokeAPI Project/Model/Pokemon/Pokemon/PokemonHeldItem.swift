//
//  PokemonHeldItem.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct PokemonHeldItem: Codable, Hashable {
    let item: NamedAPIResource
    let versionDetails: [PokemonHeldItemVersion]
    
    enum CodingKeys: String, CodingKey {
        case item
        case versionDetails = "version_details"
    }
}
