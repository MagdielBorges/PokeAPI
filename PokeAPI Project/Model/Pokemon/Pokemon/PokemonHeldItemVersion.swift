//
//  PokemonHeldItemVersion.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct PokemonHeldItemVersion: Codable, Hashable {
    let version: NamedAPIResource
    let rarity: Int
}
