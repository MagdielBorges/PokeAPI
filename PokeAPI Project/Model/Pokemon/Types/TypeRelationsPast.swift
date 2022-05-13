//
//  TypeRelationsPast.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct TypeRelationsPast: Codable {
    let generation: NamedAPIResource
    let damageRelations: TypeRelations
    
    enum CodingKeys: String, CodingKey {
        case generation
        case damageRelations = "damage_relations"
    }
}
