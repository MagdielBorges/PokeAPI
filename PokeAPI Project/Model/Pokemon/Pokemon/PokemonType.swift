//
//  PokemonType.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct PokemonType: Codable, Hashable {
    let slot: Int
    let type: NamedAPIResource
}
