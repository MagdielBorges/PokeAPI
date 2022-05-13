//
//  MoveStatAffect.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct MoveStatAffect: Codable {
    let change: Int
    let move: NamedAPIResource
}
