//
//  MoveBattleStylePreference.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct MoveBattleStylePreference: Codable {
    let lowHpPreference: Int
    let highHpPreference: Int
    let moveBattleStyle: NamedAPIResource
    
    enum CodingKeys: String, CodingKey {
        case lowHpPreference = "low_hp_preference"
        case highHpPreference = "high_hp_preference"
        case moveBattleStyle = "move_battle_style"
    }
}
