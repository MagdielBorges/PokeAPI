//
//  Generation.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct Generation: Codable {
    let id: Int
    let name: String
    let abilities: [NamedAPIResource]
    let names: [Name]
    let mainRegion: NamedAPIResource
    let moves: [NamedAPIResource]
    let pokemonSpecies: [NamedAPIResource]
    let types: [NamedAPIResource]
    let versionGroups: [NamedAPIResource]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case abilities
        case names
        case mainRegion = "main_region"
        case moves
        case pokemonSpecies = "pokemon_species"
        case types
        case versionGroups = "version_groups"
    }
}
