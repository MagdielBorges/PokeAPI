//
//  PokemonSpeciesDexEntry.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct PokemonSpeciesDexEntry: Codable, Hashable{
    let entryNumber: Int
    let pokedex: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case entryNumber = "entry_number"
        case pokedex
    }
}
