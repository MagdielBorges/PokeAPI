//
//  GrowthRate.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct GrowthRate: Codable {
    let id: Int
    let name: String
    let formula: String
    let descriptions: [Description]
    let levels: [GrowthRateExperienceLevel]
    let pokemonSpecies: [NamedAPIResource]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case formula
        case descriptions
        case levels
        case pokemonSpecies = "pokemon_species"
    }
}
