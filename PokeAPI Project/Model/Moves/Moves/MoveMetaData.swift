//
//  MoveMetaData.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct MoveMetaData: Codable {
    let ailment: NamedAPIResource
    let category: NamedAPIResource
    let minHits: Int?
    let maxHits: Int?
    let minTurns: Int?
    let maxTurns: Int?
    let drain: Int
    let healing: Int
    let critRate: Int
    let ailmentChance: Int
    let flinchChance: Int
    let statChance: Int
    
    enum CodingKeys: String, CodingKey {
        case ailment
        case category
        case minHits = "min_hits"
        case maxHits = "max_hits"
        case minTurns = "min_turns"
        case maxTurns = "max_turns"
        case drain
        case healing
        case critRate = "crit_rate"
        case ailmentChance = "ailment_chance"
        case flinchChance = "flinch_chance"
        case statChance = "stat_chance"
    }
}
