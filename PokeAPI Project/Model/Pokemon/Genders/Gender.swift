//
//  Gender.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct Gender: Codable {
    let id: Int
    let name: String
    let pokemonSpeciesDetails: [PokemonSpeciesGender]
    let requiredForEvolution: [NamedAPIResource]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case pokemonSpeciesDetails = "pokemon_species_details"
        case requiredForEvolution = "required_for_evolution"
    }
}
