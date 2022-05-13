//
//  Stat.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct Stat: Codable {
    let id: Int
    let name: String
    let gameIndex: Int
    let isBattleOnly: Bool
    let affectingMoves: MoveStatAffectSets
    let affectingNatures: NatureStatAffectSets
    let characteristics: [APIResource]
    let moveDamageClass: NamedAPIResource
    let names: [Name]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case gameIndex = "game_index"
        case isBattleOnly = "is_battle_only"
        case affectingMoves = "affecting_moves"
        case affectingNatures = "affecting_natures"
        case characteristics
        case moveDamageClass = "move_damage_class"
        case names
    }
}
