//
//  PastMoveStatValues.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct PastMoveStatValues: Codable {
    let accuracy: Int?
    let effectChance: Int?
    let power: Int?
    let pp: Int?
    let effectEntries: [VerboseEffect]?
    let type: NamedAPIResource?
    let versionGroup: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case accuracy
        case effectChance = "effect_chance"
        case power
        case pp
        case effectEntries = "effect_entries"
        case type
        case versionGroup = "version_group"
    }
}
