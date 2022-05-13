//
//  Nature.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct Nature: Codable {
    let id: Int
    let name: String
    let decreasedStat: NamedAPIResource
    let increasedStat: NamedAPIResource
    let hatesFlavor: NamedAPIResource
    let likesFlavor: NamedAPIResource
    let pokeathlonStatChanges: [NatureStatChange]
    let moveBattleStylePreferences: [MoveBattleStylePreference]
    let names: [Name]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case decreasedStat = "decreased_stat"
        case increasedStat = "increased_stat"
        case hatesFlavor = "hates_flavor"
        case likesFlavor = "likes_flavor"
        case pokeathlonStatChanges = "pokeathlon_stat_changes"
        case moveBattleStylePreferences = "move_battle_style_preferences"
        case names
    }
}
