//
//  Ability.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct Ability: Codable {
    let id: Int
    let name: String
    let isMainSeries: Bool
    let generation: NamedAPIResource
    let names: [Name]
    let effectEntries: [VerboseEffect]
    let effectChanges: [AbilityEffectChange]
    let flavorTextEntries: [AbilityFlavorText]
    let pokemon: [AbilityPokemon]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case isMainSeries = "is_main_series"
        case generation
        case names
        case effectEntries = "effect_entries"
        case effectChanges = "effect_changes"
        case flavorTextEntries = "flavor_text_entries"
        case pokemon
    }
}
