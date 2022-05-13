//
//  AbilityEffectChange.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct AbilityEffectChange: Codable, Hashable {
    let effectEntries: [Effect]
    let versionGroup: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case effectEntries = "effect_entries"
        case versionGroup = "version_group"
    }
}
