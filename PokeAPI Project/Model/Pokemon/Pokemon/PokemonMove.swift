//
//  PokemonMove.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct PokemonMove: Codable, Hashable {
    
    let move: NamedAPIResource
    let versionGroupDetails: [PokemonMoveVersion]
    
    enum CodingKeys: String, CodingKey {
        case move
        case versionGroupDetails = "version_group_details"
    }
}
