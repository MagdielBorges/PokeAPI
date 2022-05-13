//
//  ContestType.swift
//  PokeAPI Project
//
//  Created by Magdiel Borges on 5/4/22.
//

import Foundation

struct ContestType: Codable {
    let id: Int
    let name: String
    let berryFlavor: NamedAPIResource
    let names: [ContestName]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case berryFlavor = "berry_flavor"
        case names
    }
}
