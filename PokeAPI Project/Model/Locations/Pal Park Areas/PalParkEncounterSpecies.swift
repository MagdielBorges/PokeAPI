//
//  PalParkEncounterSpecies.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

struct PalParkEncounterSpecies: Codable {
    let baseScore: Int
    let rate: Int
    let pokemonSpecies: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case baseScore = "base_score"
        case rate
        case pokemonSpecies = "pokemon_species"
    }
}
