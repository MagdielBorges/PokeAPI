//
//  PokemonTypePast.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct PokemonTypePast: Codable {
    let generation: NamedAPIResource
    let types: [PokemonType]
}
