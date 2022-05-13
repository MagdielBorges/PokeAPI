//
//  EvolutionDetail.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct EvolutionDetail: Codable, Hashable {
    let item: NamedAPIResource?
    let trigger: NamedAPIResource?
    let gender: Int?
    let heldItem: NamedAPIResource?
    let knownMove: NamedAPIResource?
    let knownMoveType: NamedAPIResource?
    let location: NamedAPIResource?
    let minLevel: Int?
    let minHappiness: Int?
    let minBeauty: Int?
    let minAffection: Int?
    let needsOverworldRain: Bool?
    let partySpecies: NamedAPIResource?
    let partyType: NamedAPIResource?
    let relativePhysicalStats: Int?
    let timeOfDay: String?
    let tradeSpecies: NamedAPIResource?
    let turnUpsideDown: Bool?
    
    enum CodingKeys: String, CodingKey {
        case item
        case trigger
        case gender
        case heldItem = "held_item"
        case knownMove = "known_move"
        case knownMoveType = "known_move_type"
        case location
        case minLevel = "min_level"
        case minHappiness = "min_happiness"
        case minBeauty = "min_beauty"
        case minAffection = "min_affection"
        case needsOverworldRain = "needs_overworld_rain"
        case partySpecies = "party_species"
        case partyType = "party_type"
        case relativePhysicalStats = "relative_physical_stats"
        case timeOfDay = "time_of_day"
        case tradeSpecies = "trade_species"
        case turnUpsideDown = "turn_upside_down"
    }
}
