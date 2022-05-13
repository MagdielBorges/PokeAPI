//
//  PokemonEntry.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct PokemonEntry: Codable, Hashable {
    let entryNumber: Int
    let pokemonSpecies: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case entryNumber = "entry_number"
        case pokemonSpecies = "pokemon_species"
    }
}
