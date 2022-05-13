//
//  PokemonStat.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct PokemonStat: Codable, Hashable {
    let stat: NamedAPIResource
    let effort: Int
    let baseStat: Int
    
    enum CodingKeys: String, CodingKey {
        case stat
        case effort
        case baseStat = "base_stat"
    }
}
