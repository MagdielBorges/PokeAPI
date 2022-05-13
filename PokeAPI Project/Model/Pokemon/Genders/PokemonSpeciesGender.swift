//
//  PokemonSpeciesGender.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct PokemonSpeciesGender: Codable {
    let rate: Int
    let pokemonSpecies: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case rate
        case pokemonSpecies = "pokemon_species"
    }
}
