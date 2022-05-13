//
//  Move.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct Move: Codable {
    let id: Int
    let name: String
    let accuracy: Int
    let effectChance: Int?
    let pp: Int
    let priority: Int
    let power: Int?
    let contestCombos: ContestComboSets?
    let contestType: NamedAPIResource
    let contestEffect: APIResource
    let damageClass: NamedAPIResource
    let effectEntries: [VerboseEffect]
    let effectChanges: [AbilityEffectChange]?
    let learnedByPokemon: [NamedAPIResource]
    let flavorTextEntries: [MoveFlavorText]
    let generation: NamedAPIResource
    let machines: [MachineVersionDetail]?
    let meta: MoveMetaData
    let names: [Name]
    let pastValues: [PastMoveStatValues]?
    let statChanges: [MoveStatChange]?
    let superContestEffect: APIResource
    let target: NamedAPIResource
    let type: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case accuracy
        case effectChance = "effect_chance"
        case pp
        case priority
        case power
        case contestCombos = "contest_combos"
        case contestType = "contest_type"
        case contestEffect = "contest_effect"
        case damageClass = "damage_class"
        case effectEntries = "effect_entries"
        case effectChanges = "effect_changes"
        case learnedByPokemon = "learned_by_pokemon"
        case flavorTextEntries = "flavor_text_entries"
        case generation
        case machines
        case meta
        case names
        case pastValues = "past_values"
        case statChanges = "stat_changes"
        case superContestEffect = "super_contest_effect"
        case target
        case type
    }
}
