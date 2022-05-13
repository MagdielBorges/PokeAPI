//
//  Region.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

struct Region: Codable {
    let id: Int
    let locations: [NamedAPIResource]
    let name: String
    let names: [Name]
    let mainGeneration: NamedAPIResource
    let pokedexes: [NamedAPIResource]
    let versionGroups: [NamedAPIResource]
    
    enum CodingKeys: String, CodingKey {
        case id
        case locations
        case name
        case names
        case mainGeneration = "main_generation"
        case pokedexes
        case versionGroups = "version_groups"
    }
}
