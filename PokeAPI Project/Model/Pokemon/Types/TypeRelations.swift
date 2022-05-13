//
//  TypeRelations.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct TypeRelations: Codable {
    let noDamageTo: [NamedAPIResource]?
    let halfDamageTo: [NamedAPIResource]
    let doubleDamageTo: [NamedAPIResource]
    let noDamageFrom: [NamedAPIResource]
    let halfDamageFrom: [NamedAPIResource]
    let doubleDamageFrom: [NamedAPIResource]
    
    enum CodingKeys: String, CodingKey {
        case noDamageTo = "no_damage_to"
        case halfDamageTo = "half_damage_to"
        case doubleDamageTo = "double_damage_to"
        case noDamageFrom = "no_damage_from"
        case halfDamageFrom = "half_damage_from"
        case doubleDamageFrom = "double_damage_from"
    }
}
