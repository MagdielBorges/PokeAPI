//
//  PokemonForm.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct PokemonForm: Codable {
    let id: Int
    let name: String
    let order: Int
    let formOrder: Int
    let isDefault: Bool
    let isBattleOnly: Bool
    let isMega: Bool
    let formName: String
    let pokemon: NamedAPIResource
    let types: [PokemonFormType]
   // let sprites: PokemonFormSprites
    let sprites: PokemonSprites
    let versionGroup: NamedAPIResource
    let names: [Name]
    let formNames: [Name]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case order
        case formOrder = "form_order"
        case isDefault = "is_default"
        case isBattleOnly = "is_battle_only"
        case isMega = "is_mega"
        case formName = "form_name"
        case pokemon
        case types
        case sprites
        case versionGroup = "version_group"
        case names
        case formNames = "form_names"
    }
}
