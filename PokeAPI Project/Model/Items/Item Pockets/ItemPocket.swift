//
//  ItemPocket.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct ItemPocket: Codable {
    let id: Int
    let name: String
    let categories: [NamedAPIResource]
    let names: [Name]
}
