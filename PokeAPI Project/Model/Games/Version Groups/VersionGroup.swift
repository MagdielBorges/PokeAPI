//
//  VersionGroup.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct VersionGroup: Codable {
    let id: Int
    let name: String
    let order: Int
    let generation: NamedAPIResource
    let moveLearnMethods: [NamedAPIResource]
    let pokedexes: [NamedAPIResource]
    let regions: [NamedAPIResource]
    let version: [NamedAPIResource]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case order
        case generation
        case moveLearnMethods = "move_learn_methods"
        case pokedexes
        case regions
        case version
    }
}
