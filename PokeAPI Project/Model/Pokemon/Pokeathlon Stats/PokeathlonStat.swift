//
//  PokeathlonStat.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct PokeathlonStat: Codable {
    let id: Int
    let name: String
    let names: [Name]
    let affectingNatures: NaturePokeathlonStatAffectSets
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case names
        case affectingNatures = "affectingNatures"
    }
}
