//
//  LocationArea.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

struct LocationArea: Codable {
    let id: Int
    let name: String
    let gameIndex: Int
    let encounterMethodRates: [EncounterMethodRate]
    let location: NamedAPIResource
    let names: [Name]
    let pokemonEncounters: [PokemonEncounter]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case gameIndex = "game_index"
        case encounterMethodRates = "encounter_method_rates"
        case location
        case names
        case pokemonEncounters = "pokemon_encounters"
    }
}
