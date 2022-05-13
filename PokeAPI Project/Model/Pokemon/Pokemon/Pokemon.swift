//
//  Pokemon.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct Pokemon: Codable {
    let id: Int
    let name: String
    let baseExperience: Int
    let height: Int
    let isDefault: Bool
    let order: Int
    let weight: Int
    let abilities: [PokemonAbility]
    let forms: [NamedAPIResource]
    let gameIndices: [VersionGameIndex]?
    let heldItems: [PokemonHeldItem]?
    let locationAreaEncounters: String
    let moves: [PokemonMove]
    let pastTypes: [PokemonTypePast]?
    let sprites: PokemonSprites
    let species: NamedAPIResource
    let stats: [PokemonStat]
    let types: [PokemonType]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case baseExperience = "base_experience"
        case height
        case isDefault = "is_default"
        case order
        case weight
        case abilities
        case forms
        case gameIndices = "game_indices"
        case heldItems = "held_items"
        case locationAreaEncounters = "location_area_encounters"
        case moves
        case pastTypes = "past_types"
        case sprites
        case species
        case stats
        case types
    }
}
