//
//  PalParkArea.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

struct PalParkArea: Codable {
    let id: Int
    let name: String
    let names: [Name]
    let pokemonEncounters: [PalParkEncounterSpecies]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case names
        case pokemonEncounters = "pokemon_encounters"
    }
}
