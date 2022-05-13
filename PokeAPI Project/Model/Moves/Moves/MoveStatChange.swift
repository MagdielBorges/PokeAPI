//
//  MoveStatChange.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct MoveStatChange: Codable {
    let change: Int
    let stat: NamedAPIResource
}
