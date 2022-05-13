//
//  PokemonEncounter.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

struct PokemonEncounter: Codable {
    let pokemon: NamedAPIResource
    let versionDetails: [VersionEncounterDetail]
    
    enum CodingKeys: String, CodingKey {
        case pokemon
        case versionDetails = "version_details"
    }
}
