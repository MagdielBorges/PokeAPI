//
//  MoveAilment.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct MoveAilment: Codable {
    let id: Int
    let name: String
    let moves: [NamedAPIResource]
    let names: [Name]
}
