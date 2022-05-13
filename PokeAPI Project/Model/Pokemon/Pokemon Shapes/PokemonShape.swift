//
//  PokemonShape.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct PokemonShape: Codable {
    let id: Int
    let name: String
    let awesomeNames: [AwesomeName]
    let names: [Name]
    let pokemonSpecies: [NamedAPIResource]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case awesomeNames = "awesome_names"
        case names
        case pokemonSpecies = "pokemon_species"
    }
}
