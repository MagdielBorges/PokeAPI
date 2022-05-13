//
//  Item.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct Item: Codable {
    let id: Int
    let name: String
    let cost: Int
    let flingPower: Int?
    let flingEffect: NamedAPIResource?
    let attributes: [NamedAPIResource]
    let category: NamedAPIResource
    let effectEntries: [VerboseEffect]
    let flavorTextEntries: [VersionGroupFlavorText]
    let gameIndices: [GenerationGameIndex]
    let names: [Name]
    let sprites: ItemSprites
    let heldByPokemon: [ItemHolderPokemon]?
    let babyTriggerFor: APIResource?
    let machines: [MachineVersionDetail]?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case cost
        case flingPower = "fling_power"
        case flingEffect = "fling_effect"
        case attributes
        case category
        case effectEntries = "effect_entries"
        case flavorTextEntries = "flavor_text_entries"
        case gameIndices = "game_indices"
        case names
        case sprites
        case heldByPokemon = "held_by_pokemon"
        case babyTriggerFor = "baby_trigger_for"
        case machines
    }
}
