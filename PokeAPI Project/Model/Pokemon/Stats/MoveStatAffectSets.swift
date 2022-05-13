//
//  MoveStatAffectSets.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct MoveStatAffectSets: Codable {
    let increase: [MoveStatAffect]
    let decrease: [MoveStatAffect]
}
