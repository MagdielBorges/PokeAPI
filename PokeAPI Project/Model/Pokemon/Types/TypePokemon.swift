//
//  TypePokemon.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct TypePokemon: Codable, Hashable {
    let slot: Int
    let pokemon: NamedAPIResource
}
