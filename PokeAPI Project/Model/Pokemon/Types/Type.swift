//
//  Type.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct `Type`: Codable {
    let id: Int
    let name: String
    let damageRelations: TypeRelations
    let pastDamageRelations: [TypeRelationsPast]?
    let gameIndices: [GenerationGameIndex]
    let generation: NamedAPIResource
    let moveDamageClass: NamedAPIResource?
    let names: [Name]
    let pokemon: [TypePokemon]
    let moves: [NamedAPIResource]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case damageRelations = "damage_relations"
        case pastDamageRelations = "past_damage_relations"
        case gameIndices = "game_indices"
        case generation
        case moveDamageClass = "move_damage_class"
        case names
        case pokemon
        case moves
    }
}
