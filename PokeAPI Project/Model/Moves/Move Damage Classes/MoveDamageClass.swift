//
//  MoveDamageClass.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct MoveDamageClass: Codable {
    let id: Int
    let name: String
    let descriptions: [Description]
    let moves: [NamedAPIResource]
    let names: [Name]
}
