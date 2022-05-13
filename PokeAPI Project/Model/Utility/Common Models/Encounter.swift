//
//  Encounter.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct Encounter: Codable {
    let minLevel: Int
    let maxLevel: Int
    let conditionValues: [NamedAPIResource]
    let chance: Int
    let method: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case minLevel = "min_level"
        case maxLevel = "max_level"
        case conditionValues = "condition_values"
        case chance
        case method
    }
}
