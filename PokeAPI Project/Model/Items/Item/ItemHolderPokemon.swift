//
//  ItemHolderPokemon.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct ItemHolderPokemon: Codable, Hashable {
    let pokemon: NamedAPIResource
    let versionDetails: [ItemHolderPokemonVersionDetail]
    
    enum CodingKeys: String, CodingKey {
        case pokemon
        case versionDetails = "version_details"
    }
}
