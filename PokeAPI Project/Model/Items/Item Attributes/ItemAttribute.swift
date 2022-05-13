//
//  ItemAttribute.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct ItemAttribute: Codable {
    let id: Int
    let name: String
    let items: [NamedAPIResource]
    let names: [Name]
    let descriptions: [Description]
}
