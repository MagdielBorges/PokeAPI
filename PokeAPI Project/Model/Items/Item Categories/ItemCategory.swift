//
//  ItemCategory.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct ItemCategory: Codable {
    let id: Int
    let name: String
    let items: [NamedAPIResource]
    let names: [Name]
    let pocket: NamedAPIResource
}
