//
//  BerryFlavor.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/3/22.
//

import Foundation

struct BerryFlavor: Codable {
    let id: Int
    let name: String
    let berries: [FlavorBerryMap]
    let contestType: NamedAPIResource
    let names: [Name]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case berries
        case contestType = "contest_type"
        case names
    }
}
