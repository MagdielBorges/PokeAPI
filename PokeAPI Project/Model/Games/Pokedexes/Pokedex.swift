//
//  Pokedex.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct Pokedex: Decodable {
    let id: Int
    let name: String
    let isMainSeries: Bool
    let descriptions: [Description]
    let names: [Name]
    let pokemonEntries: [PokemonEntry]
    let region: NamedAPIResource?
    let versionGroups: [NamedAPIResource]?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case isMainSeries = "is_main_series"
        case descriptions
        case names
        case pokemonEntries = "pokemon_entries"
        case region
        case versionGroups = "version_groups"
    }
}
