//
//  EvolutionTrigger.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct EvolutionTrigger: Codable {
    let id: Int
    let name: String
    let names: [Name]
    let pokemonSpecies: [NamedAPIResource]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case names
        case pokemonSpecies = "pokemon_species"
    }
}
