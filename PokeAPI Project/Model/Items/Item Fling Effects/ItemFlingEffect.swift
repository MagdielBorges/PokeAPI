//
//  ItemFlingEffect.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct ItemFlingEffect: Codable {
    let id: Int
    let name: String
    let effectEntries: [Effect]
    let items: [NamedAPIResource]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case effectEntries = "effect_entries"
        case items
    }
}
