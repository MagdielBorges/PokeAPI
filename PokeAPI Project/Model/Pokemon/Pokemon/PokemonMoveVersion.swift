//
//  PokemonMoveVersion.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct PokemonMoveVersion: Codable, Hashable {
    let moveLearnMethod: NamedAPIResource
    let versionGroup: NamedAPIResource
    let levelLearnedAt: Int
    
    enum CodingKeys: String, CodingKey {
        case moveLearnMethod = "move_learn_method"
        case versionGroup = "version_group"
        case levelLearnedAt = "level_learned_at"
    }
}
